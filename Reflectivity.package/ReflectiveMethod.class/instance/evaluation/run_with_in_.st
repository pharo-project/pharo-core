run: aSelector with: anArray in: aReceiver	
	"we install the old one as the compiler might need it"
	self installCompiledMethod.
	self recompileAST.
	^compiledMethod valueWithReceiver: aReceiver arguments: anArray