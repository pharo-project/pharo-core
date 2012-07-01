drop shadows
hasRolloverBorder: aBool
	aBool
		ifTrue:[self setProperty: #hasRolloverBorder toValue: true]
		ifFalse:[self removeProperty: #hasRolloverBorder]