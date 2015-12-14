apiGetCursorPos: pt
	<apicall: bool 'GetCursorPos' (Win32Point*) module: 'user32.dll'>
	^self externalCallFailed