run: aSelector with: anArray in: aReceiver	
	"we install the old one as the compiler might need it"
	self installCompiledMethod.
	self recompileAST.
	self installCompiledMethod.
	^compiledMethod valueWithReceiver: aReceiver arguments: anArray