signalPatchIsReady
	
	[ semaphore isSignaled ] whileFalse: [ semaphore signal ].
	semaphore consumeAllSignals.