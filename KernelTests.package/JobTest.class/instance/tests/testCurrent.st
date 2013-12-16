testCurrent
	self skip. "checking if this is the reason for stale processes"
	self assert: Job current isNil.

	[ :aJob | 
		self assert: Job current equals: aJob.

		[ :anotherJob | 
			self assert: Job current equals: anotherJob.
			] asJob run.

		self assert: Job current equals: aJob.
		] asJob run.
	
	self assert: Job current isNil.
