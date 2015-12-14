apiReleaseDC: aHWND with: aHDC
	<apicall: long 'ReleaseDC' (Win32Window Win32HDC) module: 'user32.dll'>
	^self externalCallFailed