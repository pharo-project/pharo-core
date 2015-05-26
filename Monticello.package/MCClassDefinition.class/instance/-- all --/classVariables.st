classVariables
	^self hasComplexVariables 
		ifTrue: [self sortedVariablesOfType: #isClassVariable ]
		ifFalse: [(self classVariablesString substrings: ' ') collect: [:x | x asSymbol => ClassVariable]].
