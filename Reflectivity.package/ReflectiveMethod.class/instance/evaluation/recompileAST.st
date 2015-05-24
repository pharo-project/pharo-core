recompileAST
	ast compilationContext semanticAnalyzerClass: RFSemanticAnalyzer.
	ast doSemanticAnalysis. "force semantic analysis"
	compiledMethod := ast generate: compiledMethod trailer.
	compiledMethod reflectiveMethod: self.