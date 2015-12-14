getFocus
	"Return the HWND currently having the input focus"
	<apicall: Win32Window 'GetFocus' (void) module: 'user32.dll'>
	^self externalCallFailed