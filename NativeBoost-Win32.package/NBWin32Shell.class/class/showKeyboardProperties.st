control panel applets
showKeyboardProperties
	"
	self showKeyboardProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @1'