private-example
computeWithMethodFinder: aString
	"Compute the selectors for the single example of receiver and args, in the very top pane" 

	| data result resultArray dataStrings mf dataObjects aa statements |
	((aString includes: $.) not) ifTrue: [^#()].
	data := aString.
	"delete trailing period. This should be fixed in the Parser!"
 	[data last isSeparator] whileTrue: [data := data allButLast]. 
	data last = $. ifTrue: [data := data allButLast]. 	"Eval"
	mf := MethodFinder new.
	data := mf cleanInputs: data.	"remove common mistakes"
	[dataObjects := self class evaluatorClass evaluate: '{', data, '}'] on: SyntaxErrorNotification do: [:e | 
		self inform: 'Syntax Error: ', e errorMessage. 
		self contents: (e errorCode allButFirst allButLast).
		^#().]. "#( data1 data2 result )"
	statements := (self class evaluatorClass new parse: 'zort ' , data in: Object notifying: nil)
						body statements select: [:each | (each isKindOf: ReturnNode) not].
 	dataStrings := statements collect:
				[:node | String streamContents:
					[:strm | (node isMessage) ifTrue: [strm nextPut: $(].
					node shortPrintOn: strm.
					(node isMessage) ifTrue: [strm nextPut: $)].]].
	dataObjects size < 2 ifTrue: [self inform: 'If you are giving an example of receiver, \args, and result, please put periods between the parts.\Otherwise just type one selector fragment' withCRs. ^#()].
 	dataObjects := Array with: dataObjects allButLast with: dataObjects last. "#( (data1
  data2) result )" 
	result := mf load: dataObjects; findMessage.
	(result first beginsWith: 'no single method') ifFalse: [
		aa := self testObjects: dataObjects strings: dataStrings.
		dataObjects := aa second.  dataStrings := aa third].
	resultArray := self listFromResult: result. 
	resultArray isEmpty ifTrue: [self inform: result first].
	dataStrings size = (dataObjects first size + 1) ifTrue:
		[resultArray := resultArray collect: [:expression | | newExp |
		newExp := expression.
		dataObjects first withIndexDo: [:lit :i |
			newExp := newExp copyReplaceAll: 'data', i printString
							with: (dataStrings at: i)].
		newExp, ' --> ', dataStrings last]].
 	^ resultArray