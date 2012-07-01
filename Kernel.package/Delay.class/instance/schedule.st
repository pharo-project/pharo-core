private
schedule
	"Schedule this delay."
	
	beingWaitedOn ifTrue: [^self error: 'This Delay has already been scheduled.'].
	AccessProtect critical: [
		ScheduledDelay := self.
		TimingSemaphore signal]