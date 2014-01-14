isHighPriorityClass
	"Indicates a process that performs time-critical tasks that must be executed immediately for it to run correctly."
	
	^self getPriorityClass == HIGH_PRIORITY_CLASS	