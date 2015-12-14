frameRectangle: aRect brush: aBrush
	"Draws a border around the specified rectangle by using the specified brush. The width and height of the border are always one logical unit."
 
	self
		apiFrameRect: self
		with: (Win32Rectangle fromRectangle: aRect)
		with: aBrush.
 