control panel applets
showFontsProperties
	"
	self showFontsProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @3'