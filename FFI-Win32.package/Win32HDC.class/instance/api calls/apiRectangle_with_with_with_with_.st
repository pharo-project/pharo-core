apiRectangle: aHDC with: left with: top with: right with: bottom
	<apicall: bool 'Rectangle' (Win32HDC long long long long) module: 'gdi32.dll'>
	^self externalCallFailed