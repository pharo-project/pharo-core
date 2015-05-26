getNumberOfMouseButtons
	"Returns the number of mouse buttons, or zero if no mouse is installed"
	
	^self getSystemMetrics: SM_CMOUSEBUTTONS  