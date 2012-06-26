preconditions
checkForValidTemporaryVariable
	| parseTree |
	parseTree := class parseTreeFor: selector.
	(parseTree allTemporaryVariables includes: temporaryVariableName) 
		ifFalse: 
			[self refactoringError: temporaryVariableName 
						, ' isn''t a valid temporary variable name'].
	(parseTree allArgumentVariables includes: temporaryVariableName) 
		ifTrue: 
			[self refactoringError: temporaryVariableName , ' is a block parameter'].
	(RBReadBeforeWrittenTester isVariable: temporaryVariableName
		readBeforeWrittenIn: parseTree) 
			ifTrue: 
				[self 
					refactoringWarning: ('<1s> is read before it is written.<n>Proceed anyway?' 
							expandMacrosWith: temporaryVariableName)]