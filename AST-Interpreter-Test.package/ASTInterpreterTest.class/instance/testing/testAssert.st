testAssert

	self should: [self interpret: 'ASTInterpreterTest new assert: false '] raise: InterpretationError.
	self shouldnt: [self interpret: 'ASTInterpreterTest new assert: true '] raise: InterpretationError.
	