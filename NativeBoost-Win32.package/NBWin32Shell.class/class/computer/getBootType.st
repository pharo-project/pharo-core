getBootType
	"Returns the boot type as a string.	
		self getBootType	
	"
		
	^#('Normal' 'Fail-safe' 'Fail-safe with network') at: (self getSystemMetrics: SM_CLEANBOOT) + 1  