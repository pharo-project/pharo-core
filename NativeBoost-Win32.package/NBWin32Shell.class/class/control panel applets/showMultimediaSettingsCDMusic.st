showMultimediaSettingsCDMusic
	"
	self showMultimediaSettingsCDMusic
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,3'