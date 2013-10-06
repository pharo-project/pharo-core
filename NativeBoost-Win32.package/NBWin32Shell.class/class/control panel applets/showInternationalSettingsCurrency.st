showInternationalSettingsCurrency
	"	
		self showInternationalSettingsCurrency
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,2'