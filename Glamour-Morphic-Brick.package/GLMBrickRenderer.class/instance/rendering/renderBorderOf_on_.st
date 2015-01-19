renderBorderOf: aBrick on: aCanvas
	|rect|
	
	rect := (aBrick brickBounds origin - (aBrick layoutProperties paddingLeft @ aBrick layoutProperties paddingTop)) corner: (aBrick brickBounds corner + (aBrick layoutProperties paddingRight @ aBrick layoutProperties paddingBottom)).
	aCanvas frameRectangle: rect width: aBrick borderWidth color: aBrick borderColor