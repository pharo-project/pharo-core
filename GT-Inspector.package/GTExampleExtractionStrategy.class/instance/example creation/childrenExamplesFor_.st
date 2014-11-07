childrenExamplesFor: anExample

	^ ((Pragma 
		allNamed: self exampleDependencyPragma 
		in: anExample provider class) select: [ :aPragma | 
			(aPragma argumentAt: 1) = anExample selector]) 
				ifEmpty: [ #() ]
				ifNotEmpty: [ :pragmas | 
					pragmas collect: [ :each | 
						(self createExampleFromDependencyPragma: each from: anExample provider) ] ]