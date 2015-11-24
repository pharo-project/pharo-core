update50466
	"self new update50466"
	self withUpdateLog: '17045 Auto-completion should not be used when typing numbers
	https://pharo.fogbugz.com/f/cases/17045

13756 Delay scheduling deadlock
	https://pharo.fogbugz.com/f/cases/13756'.
	self loadTogether: self script50466 merge: false.
	
Delay delaySchedulerClass: DelayExperimentalSpinScheduler .
	self flushCaches.
