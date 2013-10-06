showSoundSettings
	"Show the sound properties dialog box. 
	
		self showSoundSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Mmsys.cpl,,0'