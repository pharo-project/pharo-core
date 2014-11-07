renderColorOf: aBrick on: aCanvas
	|color|
	
	color := aBrick currentColor.
	color ifNotNil: [ aCanvas fillRectangle: aBrick brickBounds color: color ].