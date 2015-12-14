apiDrawFocusRect: aHDC with: lpRect 
	"Draws a rectangle in the style used to indicate that the rectangle has 
	the focus."
	<apicall: bool 'DrawFocusRect' (Win32HDC Win32Rectangle*) module: 'user32.dll'>
	^ self externalCallFailed