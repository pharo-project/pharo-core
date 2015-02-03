extent: aPoint
	"actually works only if width or height are not custom"
	self brickBounds: (self brickBounds origin extent: aPoint)