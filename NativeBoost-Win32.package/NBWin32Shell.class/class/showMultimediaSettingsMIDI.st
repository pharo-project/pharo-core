control panel applets
showMultimediaSettingsMIDI
	"
	self showMultimediaSettingsMIDI
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,2'