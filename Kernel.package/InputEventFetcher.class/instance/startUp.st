initialize-release
startUp
	inputSemaphore := Semaphore new.
	self primSetInputSemaphore: (Smalltalk registerExternalObject: inputSemaphore).
	inputSemaphore initSignals.
	self installEventLoop