apiExtFloodFill: aHDC with: x with: y with: colorref with: fillType 
	"fills an area of the display surface with the current brush"
	<apicall: bool 'ExtFloodFill' (Win32HDC long long ulong ulong) module: 'gdi32.dll'>
	^ self externalCallFailed