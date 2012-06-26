visitor-double dispatching
acceptMethodNode: aMethodNode 
	aMethodNode arguments: (self visitArguments: aMethodNode arguments).
	aMethodNode pragmas: (aMethodNode pragmas 
		collect: [:each | self visitNode: each]).
	aMethodNode body: (self visitNode: aMethodNode body)