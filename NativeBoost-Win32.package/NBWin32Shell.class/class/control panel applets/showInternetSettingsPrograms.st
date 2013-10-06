showInternetSettingsPrograms
	"  	
		self showInternetSettingsPrograms
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,5'