drawFrameControl: aRect type: aType style: aStyle
	"Draws a frame control of the specified type and style (integer values)"
	self apiDrawFrameControl: self with: (Win32Rectangle fromRectangle: aRect) with: aType with: aStyle