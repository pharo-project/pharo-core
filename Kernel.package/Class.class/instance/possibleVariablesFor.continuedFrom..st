compiling
possibleVariablesFor: misspelled continuedFrom: oldResults

	| results |
	results := misspelled correctAgainstDictionary: self classPool continuedFrom: oldResults.
	self sharedPools do: [:pool | 
		results := misspelled correctAgainstDictionary: pool continuedFrom: results ].
	superclass == nil
		ifTrue: 
			[ ^ misspelled correctAgainstDictionary: self environment continuedFrom: results ]
		ifFalse:
			[ ^ superclass possibleVariablesFor: misspelled continuedFrom: results ]