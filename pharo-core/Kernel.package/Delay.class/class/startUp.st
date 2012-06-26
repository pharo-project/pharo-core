snapshotting
startUp
	"Restart active delay, if any, when resuming a snapshot."

	"Compare to false since it can be nil"
	(DelaySuspended = false) 
		ifTrue:[^self error: 'Trying to activate Delay twice'].
	
	self startTimerEventLoop.
	
	DelaySuspended := false.
	self restoreResumptionTimes.
	AccessProtect signal.
