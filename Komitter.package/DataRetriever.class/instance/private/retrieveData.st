retrieveData
	
	fork ifNotNil: [ fork terminate ].
	
	fork := [ 
		data := nil.
		semaphore consumeAllSignals.
		data := block value.
		self signalDataIsReady 
	] forkAt: Processor userBackgroundPriority + 5