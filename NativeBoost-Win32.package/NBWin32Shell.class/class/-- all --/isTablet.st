isTablet
	"Returns true if the current operating system is a tablet one"
	
	^(self getSystemMetrics: SM_TABLETPC) ~= 0 