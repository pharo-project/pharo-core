control panel applets
showAccessibilitySoundSettings
	"Show the sound settings for accessibility 
	
		self showAccessibilitySoundSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,2'