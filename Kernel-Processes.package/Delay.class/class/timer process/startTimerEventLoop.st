startTimerEventLoop
	"Start the timer event loop"
	"Delay startTimerEventLoop"
	self stopTimerEventLoop.
	AccessProtect := Semaphore forMutualExclusion.
	ActiveDelayStartTime := Time millisecondClockValue.
	SuspendedDelays := Heap 
			withAll: (SuspendedDelays ifNil: [ #() ])
			sortBlock: [ :delay1 :delay2 | delay1 resumptionTime <= delay2 resumptionTime ].
	TimingSemaphore := Semaphore new.
	RunTimerEventLoop := true.
	
	TimerEventLoop := [ self runTimerEventLoop ] newProcess.
	TimerEventLoop 
		name: 'Delay scheduling process';
		priority: Processor timingPriority.
	TimerEventLoop resume.
	
	TimingSemaphore signal. "get going"
