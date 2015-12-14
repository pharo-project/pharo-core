apiDeleteDC: aHDC
	<apicall: bool 'DeleteDC' (Win32HDC) module:'gdi32.dll'>
	^self externalCallFailed