control panel applets
showFindFastSetting
	"
		self showFindFastSetting
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL findfast.cpl'