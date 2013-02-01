control panel applets
showPrinterProperties
	"
	self showPrinterProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @2'