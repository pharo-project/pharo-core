testPoolDefinition
	| pool newClass |
	
	pool:= RGFactory current createSharedPoolNamed: #TextConstants.
	self assert: (pool isPool).
	self assert: (pool users isEmpty).
	self assert: (pool parent = Smalltalk globals).
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	pool addUser: newClass.
	self assert: (pool users size = 1).
	self assert: (pool includesUser: newClass).
	self assert: ((newClass sharedPoolNamed: #TextConstants) isPoolVariable).
	
	pool:= RGFactory current createClassNamed: #TextConstants.
	pool superclassName: #SharedPool.
	self assert: (pool isPool).
	self assert: (pool users isEmpty).