apiLineTo: aHDC with: x with: y
	<apicall: bool 'LineTo' (Win32HDC long long) module:'gdi32.dll'>
	^self externalCallFailed