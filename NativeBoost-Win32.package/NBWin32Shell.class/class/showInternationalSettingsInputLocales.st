control panel applets
showInternationalSettingsInputLocales
	"Show the internation settings for input locales.
	
		self showInternationalSettingsInputLocales
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,5'