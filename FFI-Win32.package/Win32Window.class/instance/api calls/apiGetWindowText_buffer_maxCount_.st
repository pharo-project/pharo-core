apiGetWindowText: handleWindow buffer: aBuffer maxCount: aNumber 
	<apicall: ulong 'GetWindowTextA' (Win32Window char* long) module: 'user32.dll'>
 
	self externalCallFailed