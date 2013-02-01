control panel applets
showPrinterManagementFolder
	"
	self showPrinterManagementFolder
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL PrintersFolder'