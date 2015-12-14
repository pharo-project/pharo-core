setWindowLong: hwnd index: index value: value
	"Sets information about the specified window."
	
	<apicall: Win32Window 'SetWindowLongA' (long long long) module: 'user32.dll'>
	^self externalCallFailed