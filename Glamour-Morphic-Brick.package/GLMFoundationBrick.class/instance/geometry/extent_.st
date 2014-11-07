extent: aPoint
	super extent: aPoint.
	
	self brickRoot brickBounds: (0@0 extent: self extent).
	self brickRoot doLayout.