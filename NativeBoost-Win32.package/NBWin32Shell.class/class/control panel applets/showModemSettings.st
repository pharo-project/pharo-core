showModemSettings
	"
	self showModemSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL modem.cpl' 