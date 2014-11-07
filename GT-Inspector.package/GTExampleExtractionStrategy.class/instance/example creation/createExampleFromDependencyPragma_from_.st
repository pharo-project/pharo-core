createExampleFromDependencyPragma: aPragma from: anExampleProvider

	^ self 
		createExampleForExamplePragma: (aPragma method pragmas detect: [:each | 
				self examplePragmas includes: each keyword])
		from: anExampleProvider