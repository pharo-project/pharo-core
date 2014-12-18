isRealtimePriorityClass
	"Indicates a process that has the highest possible priority. The threads of a real-time priority class process preempt the threads of all other processes, including operating system processes performing important tasks."
	
	^self getPriorityClass == REALTIME_PRIORITY_CLASS		