isIdlePriorityClass
	"Indicates a process whose threads run only when the system is idle and are preempted by the threads of any process running in a higher priority class. An example is a screen saver. The idle priority class is inherited by child processes."
	
	^self getPriorityClass == IDLE_PRIORITY_CLASS		