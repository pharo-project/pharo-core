run: aSelector with: anArray in: aReceiver	
	"we install the old one as the compiler might need it"
	self installCompiledMethod.
	self compileAndInstallCompiledMethod.
	^compiledMethod valueWithReceiver: aReceiver arguments: anArray