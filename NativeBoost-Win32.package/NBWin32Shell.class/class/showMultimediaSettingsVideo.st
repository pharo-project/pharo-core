control panel applets
showMultimediaSettingsVideo
	"
	self showMultimediaSettingsVideo
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,1'