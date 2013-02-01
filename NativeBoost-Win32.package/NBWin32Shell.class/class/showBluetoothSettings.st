control panel applets
showBluetoothSettings
	"	
		self showBluetoothSettings
	"

	^self shellRunDLL: 'irprops.cpl,,BluetoothAuthenticationAgent'