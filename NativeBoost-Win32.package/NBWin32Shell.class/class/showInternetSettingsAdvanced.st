control panel applets
showInternetSettingsAdvanced
	"  	
		self showInternetSettingsAdvanced
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'