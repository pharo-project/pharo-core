classInstanceVariables
	^self hasComplexVariables 
		ifTrue: [ self variablesOfType: #isClassInstanceVariable]
		ifFalse: [self classInstanceVariablesString asSlotCollection]