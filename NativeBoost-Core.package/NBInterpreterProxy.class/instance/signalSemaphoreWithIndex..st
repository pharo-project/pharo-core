proxy functions
signalSemaphoreWithIndex: index
	"Record the given semaphore index in the double buffer semaphores array to be signaled at the next convenient moment. Force a real interrupt check as soon as possible."
	
	
	^self simpleCall