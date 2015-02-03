brickBounds: aRectangle
	"if you want to change brick's position or bounds use only this method!"
	self privateBounds: aRectangle.
	
	self
		updateWidth;
		updateHeight