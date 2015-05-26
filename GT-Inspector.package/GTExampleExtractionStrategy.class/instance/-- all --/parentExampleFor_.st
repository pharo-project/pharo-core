parentExampleFor: anExample
	| dependencyPragma |
	
	dependencyPragma := anExample methodReference compiledMethod pragmas 
		detect: [ :each | each keyword = self exampleDependencyPragma ] 
		ifNone: [ nil ].

	^ dependencyPragma 
		ifNil: [ nil ]
		ifNotNil: [
			self 
				createExampleForMethod: (anExample methodReference realClass 
					compiledMethodAt: (dependencyPragma argumentAt: 1))
				from: anExample provider ].