instanceVariables
	^self hasComplexVariables 
		ifTrue: [self variablesOfType: #isInstanceVariable]
		ifFalse: [self instanceVariablesString asSlotCollection]