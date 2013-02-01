control panel applets
showProgramPropertiesStartupDisk
	"  	
		self showProgramPropertiesStartupDisk
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,3'