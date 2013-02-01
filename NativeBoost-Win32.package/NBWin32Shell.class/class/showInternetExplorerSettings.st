control panel applets
showInternetExplorerSettings
	"Show the internet explorer settings 
	
		self showInternetExplorerSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'