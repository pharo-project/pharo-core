update40548
	"self new update40548"
	
Delay stopTimerEventLoop.
.
	self withUpdateLog: '14353 Delay refactoring (part 2) - change from milliseconds to microseconds
	https://pharo.fogbugz.com/f/cases/14353'.
	self loadTogether: self script548 merge: false.
	
Delay delaySchedulerClass: DelayMicrosecondScheduler.
.
	self flushCaches.
