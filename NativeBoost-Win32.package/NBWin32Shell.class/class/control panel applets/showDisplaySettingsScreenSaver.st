showDisplaySettingsScreenSaver
	"  	
		self showDisplaySettingsScreenSaver
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,1'