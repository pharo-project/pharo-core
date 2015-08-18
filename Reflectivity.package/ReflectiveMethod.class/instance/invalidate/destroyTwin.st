destroyTwin
	self recompileAST.
	self installCompiledMethod.
	compiledMethod reflectiveMethod: nil.
	SystemAnnouncer uniqueInstance unsubscribe: self