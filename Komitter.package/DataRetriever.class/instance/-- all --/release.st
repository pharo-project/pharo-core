release
	"If I am released while some clients are waiting, I need to free them.
	In the getter, the value of semaphoreIsValid is checked to know if it was a release or the end of the query"

	| oldSemaphoreIsValid |	
	
	oldSemaphoreIsValid := semaphoreIsValid.
	semaphoreIsValid := false.
	self signalDataIsReady.
	semaphoreIsValid := oldSemaphoreIsValid.