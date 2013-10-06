testAssert
	self should: [ self interpret: 'ASTInterpreterTest new assert: false ' ] raise: InterpretationError.
	self interpret: 'ASTInterpreterTest new assert: true '