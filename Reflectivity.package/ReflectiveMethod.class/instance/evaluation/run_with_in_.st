run: aSelector with: anArray in: aReceiver	
	self compileAndInstallCompiledMethod.
	^compiledMethod valueWithReceiver: aReceiver arguments: anArray