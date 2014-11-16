unschedule: aDelay
	accessProtect critical: [
		finishedDelay := aDelay.
		timingSemaphore signal.
		].

