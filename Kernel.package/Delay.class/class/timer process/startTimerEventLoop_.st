startTimerEventLoop: delaysToTransfer
	"Start the timer event loop"
	"Delay startTimerEventLoop"
self newCodeEnabled 
  ifTrue: [
	Scheduler startTimerEventLoop: delaysToTransfer.
	]
  ifFalse: [
	self stopTimerEventLoop.
	AccessProtect := Semaphore forMutualExclusion.
	ActiveDelayStartTime := Time millisecondClockValue.
	SuspendedDelays := Heap 
			withAll: (delaysToTransfer ifNil: [ #() ])
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

