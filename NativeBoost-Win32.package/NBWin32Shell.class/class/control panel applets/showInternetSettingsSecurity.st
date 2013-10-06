showInternetSettingsSecurity
	"  	
		self showInternetSettingsSecurity
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,1'