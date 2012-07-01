instance creation
selectorParts: tokenCollection arguments: variableNodes 
	^(tokenCollection anySatisfy: [:each | each isPatternVariable]) 
		ifTrue: [super selectorParts: tokenCollection arguments: variableNodes]
		ifFalse: 
			[RBMethodNode selectorParts: tokenCollection arguments: variableNodes]