control panel applets
showInternationalSettingsNumber
	"Show the internation settings dialog for number.
	
		self showInternationalSettingsNumber
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,1'