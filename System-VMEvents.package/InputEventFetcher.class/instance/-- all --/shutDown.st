shutDown
	self terminateEventLoop.
	inputSemaphore ifNotNil: [Smalltalk unregisterExternalObject: inputSemaphore]