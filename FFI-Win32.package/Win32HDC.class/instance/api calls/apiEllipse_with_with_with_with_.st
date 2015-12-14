apiEllipse: aHDC with: left with: top with: right with: bottom
	<apicall: bool 'Ellipse' (Win32HDC long long long long) module: 'gdi32.dll'>
	^self externalCallFailed