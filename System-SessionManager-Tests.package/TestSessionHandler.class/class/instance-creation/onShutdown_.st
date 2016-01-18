onShutdown: aBlockClosure 
	
	^ self new
		shutdownHandler: aBlockClosure;
		yourself