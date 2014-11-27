startTimerEventLoop
	"Start the timer event loop"
	"Delay restartTimerEventLoop"
self newCodeEnabled 
  ifTrue: [
	Scheduler startTimerEventLoop.
	]
  ifFalse: [
	TimerEventLoop ifNotNil: [ self error: 'Timer Event Loop has already been started' ]. 
	
	ActiveDelayStartTime := Time millisecondClockValue.
	SuspendedDelays := Heap 
			sortBlock: [ :delay1 :delay2 | delay1 resumptionTime <= delay2 resumptionTime ].
	TimingSemaphore := Semaphore new.
	RunTimerEventLoop := true.
	
	TimerEventLoop := [ self runTimerEventLoop ] newProcess.
	TimerEventLoop 
		name: 'Delay Scheduling Process';
		priority: Processor timingPriority.
	TimerEventLoop resume.
	
	TimingSemaphore signal. "get going"
	].
