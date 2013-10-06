showProgramPropertiesWindowsSetup
	"  	
		self showProgramPropertiesWindowsSetup
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,2'