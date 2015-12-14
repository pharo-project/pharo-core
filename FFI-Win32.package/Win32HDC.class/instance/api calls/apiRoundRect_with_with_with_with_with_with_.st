apiRoundRect: aHDC with: left with: top with: right with: bottom with: width with: height
	"Draws a rectangle with rounded corners. The rectangle is outlined by  
	using the current pen and filled by using the current brush"
	<apicall: bool 'RoundRect' (Win32HDC long long long long long long) module: 'gdi32.dll'>
	^ self externalCallFailed