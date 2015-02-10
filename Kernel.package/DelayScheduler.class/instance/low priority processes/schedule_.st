schedule: aDelay
	| scheduled |
	scheduled := false.
	aDelay beingWaitedOn ifTrue: [^self error: 'This Delay has already been scheduled.'].
	accessProtect critical: [
		scheduledDelay := aDelay.
		timingSemaphore signal. "#handleTimerEvent: sets scheduledDelay:=nil"
		scheduled := (scheduledDelay == nil).
		].
	^scheduled.
	
