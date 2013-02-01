control panel applets
showMicrosoftWorkgroupPostofficeSettings
	"
	self showMicrosoftWorkgroupPostofficeSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL wgpocpl.cpl'