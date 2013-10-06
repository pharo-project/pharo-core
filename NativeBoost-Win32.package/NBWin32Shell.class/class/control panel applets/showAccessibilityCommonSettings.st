showAccessibilityCommonSettings
	"Show the common settings for accessibility
	
		self showAccessibilityCommonSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,5'