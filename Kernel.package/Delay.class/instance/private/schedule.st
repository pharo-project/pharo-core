schedule
	"Schedule this delay."
self newCodeEnabled 
  ifTrue: [
	Scheduler schedule: self.
	]
  ifFalse: [
	beingWaitedOn ifTrue: [^self error: 'This Delay has already been scheduled.'].
	AccessProtect critical: [
		ScheduledDelay := self.
		TimingSemaphore signal]
	].
	
