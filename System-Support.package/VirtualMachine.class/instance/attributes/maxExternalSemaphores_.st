maxExternalSemaphores: aSize 
	"This method should never be called as result of normal program
	execution. If it is however, handle it differently:
	- In development, signal an error to promt user to set a bigger size
	at startup immediately.
	- In production, accept the cost of potentially unhandled interrupts,
	but log the action for later review.
	
	See comment in maxExternalObjectsSilently: why this behaviour is
	desirable, "
	"Can't find a place where development/production is decided.
	Suggest Smalltalk image inProduction, but use an overridable temp
	meanwhile. "
	| inProduction |
	self maxExternalSemaphores
		ifNil: [^ 0].
	inProduction := false.
	^ inProduction
		ifTrue: [self maxExternalSemaphoresSilently: aSize.
			self crTrace: 'WARNING: Had to increase size of semaphore signal handling table due to many external objects concurrently in use';
				 crTrace: 'You should increase this size at startup using #maxExternalObjectsSilently:';
				 crTrace: 'Current table size: ' , self maxExternalSemaphores printString]
		ifFalse: ["Smalltalk image"
			self error: 'Not enough space for external objects, set a larger size at startup!'
			"Smalltalk image"]