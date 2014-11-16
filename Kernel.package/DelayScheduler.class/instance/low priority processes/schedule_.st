schedule: aDelay
	aDelay beingWaitedOn ifTrue: [^self error: 'This Delay has already been scheduled.'].
	accessProtect critical: [
		scheduledDelay := aDelay.
		timingSemaphore signal.
		]
	
