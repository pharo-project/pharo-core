unschedule
self newCodeEnabled 
  ifTrue: [
	Scheduler unschedule: self.
	]
  ifFalse: [	AccessProtect critical: [
		FinishedDelay := self.
		TimingSemaphore signal.
		].
	].