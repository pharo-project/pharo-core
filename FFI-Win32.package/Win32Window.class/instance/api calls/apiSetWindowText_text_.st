apiSetWindowText: handleWindow text: aString
	<apicall: long 'SetWindowTextA' (Win32Window char*) module: 'user32.dll'>
 
	^self externalCallFailed