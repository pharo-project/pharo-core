drawFocusRectangle: aRect  
	"draws a rectangle in the style used to indicate that the rectangle has the focus"
 
	self
		apiDrawFocusRect: self
		with: (Win32Rectangle fromRectangle: aRect)
	 
	 