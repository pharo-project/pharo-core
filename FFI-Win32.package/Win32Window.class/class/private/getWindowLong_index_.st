getWindowLong: hwnd index: index
	"Retrieves information about the specified window."
	
	<apicall: Win32Window 'GetWindowLongA' (long long) module: 'user32.dll'>
	^self externalCallFailed