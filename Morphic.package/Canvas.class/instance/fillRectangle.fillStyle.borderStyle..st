drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
	"Fill the given rectangle."
	self fillRectangle: (aRectangle insetBy: aBorderStyle width) fillStyle: aFillStyle.
	aBorderStyle frameRectangle: aRectangle on: self