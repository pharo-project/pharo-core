checkProcess
	process isComplete ifTrue: [ semaphore signal ].
