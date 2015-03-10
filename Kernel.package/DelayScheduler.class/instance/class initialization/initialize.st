initialize
	"Delay initialize"
	timingSemaphore := (Smalltalk specialObjectsArray at: 30) ifNil: [ Semaphore new ].
	delaySuspended := true.
	accessProtect := Semaphore forMutualExclusion.

	"Case 14353 - The following is moving here from #startTimerEventLoop to help with tests. 
	Its also left in its original location for now, to be cleaned up later."
	suspendedDelays := Heap 
			sortBlock: [ :delay1 :delay2 | delay1 schedulerResumptionTime <= delay2 schedulerResumptionTime ].
