schedule: aDelay
	| scheduled |
	scheduled := false.
	aDelay schedulerBeingWaitedOn ifTrue: [^self error: 'This Delay has already been scheduled.'].
	accessProtect critical: [
		scheduledDelay := aDelay.
		timingSemaphore signal. "#handleTimerEvent: sets scheduledDelay:=nil"
		scheduled := (scheduledDelay == nil).
		].
	^scheduled.
	