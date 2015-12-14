createSolidBrush: aCOLORREF
	<apicall: Win32HBrush 'CreateSolidBrush' (ulong) module: 'gdi32.dll'>
	^self externalCallFailed