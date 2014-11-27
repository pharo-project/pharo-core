stopTimerEventLoop

| suspendedDelayToClear |
self newCodeEnabled 
  ifTrue: [
	^ Scheduler stopTimerEventLoop.
	]
  ifFalse: [
	"Stop the timer event loop"
	RunTimerEventLoop := false.
	TimingSemaphore ifNotNil: [ TimingSemaphore signal ].
	TimerEventLoop := nil.
		
	"Expire any remaining delays."
	ActiveDelay ifNotNil: [ ActiveDelay timingPrioritySignalWaitingProcess ].
	[ suspendedDelayToClear := SuspendedDelays removeFirstOrNil ]
		whileNotNil: [ suspendedDelayToClear timingPrioritySignalWaitingProcess ].

	].
