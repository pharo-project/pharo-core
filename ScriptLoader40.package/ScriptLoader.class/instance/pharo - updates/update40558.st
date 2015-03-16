update40558
	"self new update40558"
	
Delay stopTimerEventLoop.
	self withUpdateLog: '15122 resuming Delay failing under certain condition
	https://pharo.fogbugz.com/f/cases/15122'.
	self loadTogether: self script558 merge: false.
	
"The double change here ensures the microsecond scheduler is made new"
Delay delaySchedulerClass: DelayMillisecondScheduler.
Delay delaySchedulerClass: DelayMicrosecondScheduler.
	self flushCaches.
