schedule: aDelay

	"Depends on the bytecode inlining and cooperative multitasking semantics 
	 such that interuption can occur between the test and the assignment."
	
	[ 	scheduledDelay == nil ifTrue: [ 
				scheduledDelay := aDelay. 
				timingSemaphore signal.
				^true.
				].
		Transcript show: 'S'.
		true.
	] whileTrue.	
