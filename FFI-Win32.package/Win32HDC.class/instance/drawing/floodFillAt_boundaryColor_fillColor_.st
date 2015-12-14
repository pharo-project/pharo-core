floodFillAt: aPoint boundaryColor: aColor fillColor: anotherColor 
	"fills an area of the display with the given color"
	| newBrush oldBrush |
	newBrush := Win32HBrush createSolidBrush: anotherColor asColorref.
	oldBrush := self selectObject: newBrush.
	(self
		apiExtFloodFill: self
		with: aPoint x
		with: aPoint y
		with: aColor asColorref
		with: 0) inspect.
	self selectObject: oldBrush.
	newBrush delete