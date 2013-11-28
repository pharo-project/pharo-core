retrievePatch
	
	self resetFork.
	
	fork := [ 
		patch := nil.
		semaphore consumeAllSignals.
		patch := package patch.
		self signalPatchIsReady 
	] forkAt: Processor userBackgroundPriority + 5