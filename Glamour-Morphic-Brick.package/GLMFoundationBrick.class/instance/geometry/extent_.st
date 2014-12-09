extent: aPoint
	|left top right bottom|
	
	super extent: aPoint.
	
	left := self brickRoot layoutProperties marginLeft.
	top := self brickRoot layoutProperties marginTop.
	
	right := self extent x - self brickRoot layoutProperties marginRight.
	bottom := self extent y - self brickRoot layoutProperties marginBottom.
	
	self brickRoot brickBounds: (left@top corner: (right@bottom)).
	
	self brickRoot doLayout.