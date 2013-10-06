testExceptionCull

	(self interpret: 'ASTInterpreterTest new should: [ [:x :y | ] cull: 1] raise: Error').
	