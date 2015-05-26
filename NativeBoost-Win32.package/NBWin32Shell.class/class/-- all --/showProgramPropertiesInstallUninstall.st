showProgramPropertiesInstallUninstall
	"  	
		self showProgramPropertiesInstallUninstall
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,1'