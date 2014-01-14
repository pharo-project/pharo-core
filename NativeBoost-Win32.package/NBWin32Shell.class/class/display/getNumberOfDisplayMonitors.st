getNumberOfDisplayMonitors
	"Returns the number of display monitors attached to the desktop"
	
	^self getSystemMetrics: SM_CMONITORS 