control panel applets
showInternetSettingsContent
	"  	
		self showInternetSettingsContent
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,3'