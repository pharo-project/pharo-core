testTestInterferenceWithSystemTimingSemaphore
	| testScheduler testDelay testProcess delayExpired |
	
	"Just clarifying how the primitive works.  If our test case methods schedule any delays, 
	the consenquent call to #primSignal:atMilliseconds: replaces the system timingSemaphore, 
	preventing it being triggered to expire normal system delays.  This indicates that 
	timingSemaphore should be triggered in #tearDown."
Transcript cr; cr.
	testScheduler := DelayScheduler new.
	testDelay := Delay forMilliseconds: 100.
	testProcess := 
	[	delayExpired := false. 
		testDelay wait.
		delayExpired := true.
	] newProcess
			priority: Processor activeProcess priority + 1 ;
			name: 'DelaySchedulerTest'.
		
	testProcess resume. "The higher priority process sets delayExpired."
	self deny: delayExpired.		
			
	[	"The primative replaces the system timingSemaphore such that it fails to be triggered to expire testDelay."
		testScheduler 
			primSignal: Semaphore new
			atMilliseconds: Time millisecondClockValue + 1000. 		

		"Busy wait until testDelay would have expired, then check it has not."
		[ Time millisecondClockValue > (testDelay resumptionTime + 100)	] whileFalse. 
		self deny: delayExpired. 	
	] 
	ensure: 
	[	"Clean up and trigger original system timingSemaphore"
		Delay testCaseSupportTimingSemaphore signal. "high priority process continues, setting delayExpired."
		self assert: delayExpired. 
		testProcess terminate.
	].

