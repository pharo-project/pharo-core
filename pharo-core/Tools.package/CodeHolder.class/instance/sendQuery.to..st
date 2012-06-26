misc
sendQuery: querySelector to: queryPerformer
	"Apply a query to the primary selector associated with the current context.  If no such selection exists, obtain one by user type-in. Then send querySelector to queryPerformer with the selector as its argument."

	| aSelector aString |
	aSelector := self selectedMessageName ifNil:
		[aString :=UIManager default request: 'Type selector:' initialAnswer: 'flag:'.
		^ aString isEmptyOrNil ifFalse:
			[(Symbol hasInterned: aString ifTrue:
				[:aSymbol | queryPerformer perform: querySelector with: aSymbol])
				ifFalse:
					[self inform: 'no such selector']]].

	queryPerformer perform: querySelector with: aSelector