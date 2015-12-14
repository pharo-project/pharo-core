apiFrameRect: aHDC with: lpRect with: brush 
	"Draws a border around the specified rectangle by using the specified brush. The width and height of the border are always one logical unit."
	<apicall: char 'FrameRect' (Win32HDC Win32Rectangle* Win32HBrush) module: 'user32.dll'>
	^ self externalCallFailed