needsToReplaceSelfReferences
	^self hasSelfReferences 
		or: [self abstractVariablesRefactoring hasVariablesToAbstract]