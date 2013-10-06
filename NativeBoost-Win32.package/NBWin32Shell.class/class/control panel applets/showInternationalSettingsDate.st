showInternationalSettingsDate
	"Show the internation settings for input locales.
	
		self showInternationalSettingsDate
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,4'