testProgressNotificationChildJob
	
	| wasRun |
	
	wasRun := false.
	
	[ :job | 
		"job precondition"
		self assert: job title equals: ''.
		self assert: job progress equals: 0.
		[ :job2 | 
			"job2 precondition"
			self assert: job2 title equals: ''.
			self assert: job2 progress equals: 0.
			"signal a JobProgress which will only affect the inner job"
			JobProgress title: 'foo' progress: 0.5.
			self assert: job2 title equals: 'foo'.
			self assert: job2 progress equals: 0.5.
			"outer job is not touched"
			self assert: job title equals: ''.
			self assert: job progress equals: 0.
		
			wasRun := true ] asJob run.
	
		self assert: job children isEmpty ] asJob run.
	
	self assert: wasRun.