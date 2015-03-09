recompileAST
	compiledMethod := ast generate: compiledMethod trailer.
	compiledMethod reflectiveMethod: self.