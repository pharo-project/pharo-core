indexInTempVectorFromIR: aName
	^(scope outerNotOptimizedScope node irInstruction tempVectorNamed: name) indexForVarNamed: aName.