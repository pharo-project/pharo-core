readFromContext: aContext scope: contextScope
	| tempVectorVar theVector offset |
	tempVectorVar := scope lookupVar: vectorName.
	theVector := tempVectorVar readFromContext: aContext scope: contextScope.
	offset := tempVectorVar indexInTempVectorFromIR: name.
	^theVector at: offset.