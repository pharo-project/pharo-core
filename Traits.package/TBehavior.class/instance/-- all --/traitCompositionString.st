traitCompositionString
	^self hasTraitComposition
		ifTrue: [self traitComposition asString]
		ifFalse: ['{}']