matching
matchSelectorAgainst: aNode inContext: aDictionary 
	self selectorParts with: aNode selectorParts do: [ :first :second |
		| keyword |
		keyword := aDictionary
			at: first value
			ifAbsentPut: [ 
				first isPatternVariable 
					ifTrue: [ second value ]
					ifFalse: [ first value ] ].
		keyword = second value 
			ifFalse: [ ^ false ] ].
	^ true