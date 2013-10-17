testOnForkErrorTakesLessThanOneSecond
	"Test that if code runs with error, there is fork"
	
	| sema timeout |
	
	sema := Semaphore new.
	[ 1/0 ] on: Exception fork: [ sema signal ].
	
	
	timeout := (sema waitTimeoutSeconds: 1).	
	self assert: timeout == false.
