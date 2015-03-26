schedule: aDelay

	scheduledDelay == nil ifFalse: [ scheduledDelayIsNil wait ].  

	"It is assumed that bytecode inlining and the system's co-operative multitasking 
	 prevents interruption before the assignment in the next line."	
		
	scheduledDelay := aDelay. 
	
	"The high priority process this wakes does scheduledDelay:=nil 
	 and signals scheduledDelayNilledSemaphore."
	
	timingSemaphore signal. 

	^true
	
