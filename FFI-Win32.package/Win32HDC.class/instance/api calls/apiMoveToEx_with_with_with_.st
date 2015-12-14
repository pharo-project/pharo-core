apiMoveToEx: aHDC with: x with: y with: pt
	<apicall: bool 'MoveToEx' (Win32HDC long long Win32Point*) module: 'gdi32.dll'>
	^self externalCallFailed