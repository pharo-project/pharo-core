pragmaSearch: aString 
	| result byCondition |
	" I choose a dictionary here because the next step is to group result by pragmas "
	result := Dictionary new.
	
	byCondition :=  self useRegEx 
		ifTrue: [[ :pragma | pragma keyword matchesRegexIgnoringCase: aString ]]
		ifFalse: [[ :pragma | pragma keyword includesSubstring: aString caseSensitive: false ]].
				
	(PragmaCollector filter: byCondition) reset; 
		do: [ :pragma || pragmaName |
			pragmaName := String streamContents: [:s |
								s << '<'; << pragma keyword; << '>' ].
			(result at: pragmaName ifAbsentPut: OrderedCollection new)				
				add: pragma method ].
	^ result