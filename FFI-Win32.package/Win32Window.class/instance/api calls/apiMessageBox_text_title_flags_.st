apiMessageBox: aHWND text: aString title: aTitle flags: flags
	<apicall: long 'MessageBoxA' (Win32Window char* char* ulong) module:'user32.dll'>
	^self externalCallFailed