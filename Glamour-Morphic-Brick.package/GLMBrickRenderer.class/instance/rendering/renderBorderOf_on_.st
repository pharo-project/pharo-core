renderBorderOf: aBrick on: aCanvas
	|rect|
	
	rect := (aBrick brickBounds origin - (aBrick paddingLeft @ aBrick paddingTop)) corner: (aBrick brickBounds corner + (aBrick paddingRight @ aBrick paddingBottom)).
	aCanvas frameRectangle: rect width: aBrick borderWidth color: aBrick borderColor