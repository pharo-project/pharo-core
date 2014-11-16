startTimerEventLoop: delaysToTransfer
	"Start the timer event loop"
	"Delay startTimerEventLoop"
	activeDelayStartTime := Time millisecondClockValue.
	suspendedDelays := Heap 
			withAll: (delaysToTransfer ifNil: [ #() ])
			sortBlock: [ :delay1 :delay2 | delay1 resumptionTime <= delay2 resumptionTime ].
	timingSemaphore := Semaphore new.
	runTimerEventLoop := true.
	
	timerEventLoop := [ self runTimerEventLoop ] newProcess.
	timerEventLoop 
		name: 'Delay Scheduling Process';
		priority: Processor timingPriority.
	timerEventLoop resume.
	
	timingSemaphore signal. "get going"
