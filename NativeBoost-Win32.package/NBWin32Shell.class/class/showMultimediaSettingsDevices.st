control panel applets
showMultimediaSettingsDevices
	"
	self showMultimediaSettingsDevices
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,4'