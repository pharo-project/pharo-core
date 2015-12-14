apiFillRect: aHDC with: lpRect with: brush 
	"Fills a rectangle by using the specified brush. This function includes  
	the left and top borders, but excludes the right and bottom borders of  
	the rectangle.  
	"
	<apicall: char 'FillRect' (Win32HDC Win32Rectangle* Win32HBrush) module: 'user32.dll'>
	^ self externalCallFailed