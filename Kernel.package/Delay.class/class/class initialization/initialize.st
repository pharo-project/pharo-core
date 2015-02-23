initialize
	"Delay initialize"
	Scheduler ifNotNil: [ Scheduler stopTimerEventLoop ].
	Scheduler := DelayScheduler new.
	Scheduler startTimerEventLoop. 
	Smalltalk addToStartUpList: self.
