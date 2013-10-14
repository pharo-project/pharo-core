testComplexCreateBaseline

	self createComplex11Baseline.
	self assert: ((Smalltalk at: self configurationName) sourceCodeAt: #baseline11:) = self complexBaseline11SourceString