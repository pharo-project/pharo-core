private-pragma
pragmaSearch: aString 
	| result byCondition |
	" I choose a dictionary here because the next step is to group result by pragmas "
	result := Dictionary new.
	
	self useRegEx 
		ifTrue: [ byCondition := [:prg | prg keyword matchesRegexIgnoringCase: aString] ]
		ifFalse: [ byCondition := [:prg | prg keyword includesSubstring: aString caseSensitive: false]].
				
	((PragmaCollector filter: byCondition) reset; collected) 
		do: [ :pragma || pragmaName |
					pragmaName := String streamContents: [:s |
										s << '<' << pragma keyword  printString << '>' ].
					(result at: pragmaName ifAbsentPut: OrderedCollection new)				
						add: pragma method ].
	^ result