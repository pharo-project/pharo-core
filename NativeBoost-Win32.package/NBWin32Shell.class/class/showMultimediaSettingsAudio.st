control panel applets
showMultimediaSettingsAudio
	"
	self showMultimediaSettingsAudio
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,0'