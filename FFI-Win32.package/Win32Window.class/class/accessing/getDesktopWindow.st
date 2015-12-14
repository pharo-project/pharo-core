getDesktopWindow
	"Return the HWND describing the desktop"
	<apicall: Win32Window 'GetDesktopWindow' (void) module: 'user32.dll'>
	^self externalCallFailed