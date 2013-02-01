control panel applets
showAccessibilityMouseSettings
	"Show the mouse settings for accessibility 
	
		self showAccessibilityMouseSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,4'