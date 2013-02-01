control panel applets
showTelephonySettings
	"
	self showTelephonySettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL telephon.cpl' 