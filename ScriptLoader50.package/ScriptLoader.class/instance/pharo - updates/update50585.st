update50585
	"self new update50585"
	self withUpdateLog: '17445 Upload Simple Test Cases for String
	https://pharo.fogbugz.com/f/cases/17445

17509 Color should handle its naming 
	https://pharo.fogbugz.com/f/cases/17509

17598 DelayExperimentalSpinScheduler should be the default delay scheduler
	https://pharo.fogbugz.com/f/cases/17598'.
	self loadTogether: self script50585 merge: false.
	
Delay delaySchedulerClass == DelayExperimentalSpinScheduler ifFalse: [ Delay delaySchedulerClass: DelayExperimentalSpinScheduler ].
	self flushCaches.
