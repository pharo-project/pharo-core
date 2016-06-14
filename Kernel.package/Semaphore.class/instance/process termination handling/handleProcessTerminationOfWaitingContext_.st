handleProcessTerminationOfWaitingContext: suspendedContext

	^suspendedContext method == (Semaphore compiledMethodAt: #critical:) 
		ifTrue: [ suspendedContext home]
		ifFalse: [ suspendedContext]