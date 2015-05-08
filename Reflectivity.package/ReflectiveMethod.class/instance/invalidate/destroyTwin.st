destroyTwin
	self recompileAST.
	self installCompiledMethod.
	compiledMethod reflectiveMethod: nil.