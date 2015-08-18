compiledMethod: aCompiledMethod
	compiledMethod := aCompiledMethod.
	ast := compiledMethod ast.
	SystemAnnouncer uniqueInstance when: ASTCacheReset send: #reinstallASTInCache to: self