control panel applets
showDisplaySettingsCommon
	"  	
		self showDisplaySettingsCommon
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,3'