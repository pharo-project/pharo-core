run: aSelector with: anArray in: aReceiver	
	"we install the old one as the compiler might need it"
	self methodClass basicAddSelector: self selector withMethod: compiledMethod.
	self hasLinks 
		ifTrue: [self recompileAST.  ]
		ifFalse: [self destroyTwin].
	^compiledMethod valueWithReceiver: aReceiver arguments: anArray