initialize
	"Delay initialize"
	Scheduler ifNotNil: [ Scheduler stopTimerEventLoop ].
	Scheduler := DelayMicrosecondScheduler new.
	Scheduler startTimerEventLoop. 
	Smalltalk addToStartUpList: self.
