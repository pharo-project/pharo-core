startUp
	"Restart active delay, if any, when resuming a snapshot."

	"Compare to false since it can be nil"
	(DelaySuspended = false) 
		ifTrue:[ ^self error: 'Trying to activate Delay twice' ].
	DelaySuspended := false.
	
	ActiveDelayStartTime := Time millisecondClockValue.
	self restoreResumptionTimes.
	AccessProtect signal.
