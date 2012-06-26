as yet unclassified
classDefinitionFrom: aPseudoClass
	| tokens traitCompositionString lastIndex classTraitCompositionString |
	tokens := Scanner new scanTokens: aPseudoClass definition.
	traitCompositionString := (aPseudoClass definition readStream
		match: 'uses:';
		upToAll: 'instanceVariableNames:') trimBoth.
	classTraitCompositionString := (aPseudoClass metaClass definition asString readStream
		match: 'uses:';
		upToAll: 'instanceVariableNames:') trimBoth.
	traitCompositionString isEmpty ifTrue: [traitCompositionString := '{}'].
	classTraitCompositionString isEmpty ifTrue: [classTraitCompositionString := '{}'].
	lastIndex := tokens size.
	^ MCClassDefinition
		name: (tokens at: 3)
		superclassName: (tokens at: 1)
		traitComposition: traitCompositionString
		classTraitComposition: classTraitCompositionString
		category: (tokens at: lastIndex)
		instVarNames: ((tokens at: lastIndex - 6) findTokens: ' ')
		classVarNames: ((tokens at: lastIndex - 4) findTokens: ' ')
		poolDictionaryNames: ((tokens at: lastIndex - 2) findTokens: ' ')
		classInstVarNames: (self classInstVarNamesFor: aPseudoClass)
		type: (self typeOfSubclass: (tokens at: 2))
		comment: (self commentFor: aPseudoClass)
		commentStamp: (self commentStampFor: aPseudoClass)