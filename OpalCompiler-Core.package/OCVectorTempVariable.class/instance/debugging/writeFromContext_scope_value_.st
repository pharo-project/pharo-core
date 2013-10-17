writeFromContext: aContext scope: contextScope value: aValue
	| tempVectorVar theVector offset |
	tempVectorVar := scope lookupVar: vectorName.
	theVector := tempVectorVar readFromContext: aContext scope: tempVectorVar scope.
	offset := tempVectorVar indexInTempVectorFromIR: name.
	^theVector at: offset put: aValue.