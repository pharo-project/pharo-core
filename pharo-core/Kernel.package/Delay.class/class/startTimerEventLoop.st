timer process
startTimerEventLoop
	"Start the timer event loop"
	"Delay startTimerEventLoop"
	self stopTimerEventLoop.
	AccessProtect := Semaphore forMutualExclusion.
	ActiveDelayStartTime := Time millisecondClockValue.
	SuspendedDelays := 
		Heap withAll: (SuspendedDelays ifNil:[#()])
			sortBlock: [:d1 :d2 | d1 resumptionTime <= d2 resumptionTime].
	TimingSemaphore := Semaphore new.
	RunTimerEventLoop := true.
	TimerEventLoop := [self runTimerEventLoop] newProcess.
	TimerEventLoop priority: Processor timingPriority.
	TimerEventLoop resume.
	TimingSemaphore signal. "get going"
