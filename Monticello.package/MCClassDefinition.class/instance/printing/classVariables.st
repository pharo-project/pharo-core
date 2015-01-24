classVariables
	^self hasComplexVariables 
		ifTrue: [self sortedVariablesOfType: #isClassVariable ]
		ifFalse: [(self classVariablesString subStrings: ' ') collect: [:x | x asSymbol => ClassVariable]].
