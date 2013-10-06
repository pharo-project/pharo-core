testNonLocalReturnPart2
	
	self should:  [ ASTInterpreterTest new returningBlock value ]
		raise: BlockCannotReturn.
	self should:  [ ASTInterpreterTest new errorBlock value ]
		raise: Error.
	self assert: (ASTInterpreterTest new block value) equals: 2.