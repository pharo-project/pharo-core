apiGetParent: aWindow
	<apicall: Win32Window 'GetParent' (Win32Window) module: 'user32.dll'>
	^self externalCallFailed