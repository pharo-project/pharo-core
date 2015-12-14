apiCreateHatchBrush: aStyle with: colorref 
	"Creates a logical brush that has the specified hatch pattern and color"
	<apicall: Win32HBrush 'CreateHatchBrush' (long ulong) module: 'gdi32.dll'>
	^ self externalCallFailed