testReset
	compiledMethod ast.
	
	self assert: (ASTCache default includesKey: compiledMethod).
	
	ASTCache reset.
	
	self deny: (ASTCache default includesKey: compiledMethod).