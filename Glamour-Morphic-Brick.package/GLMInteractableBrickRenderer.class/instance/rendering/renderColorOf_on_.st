renderColorOf: aBrick on: aCanvas
	|color|
	
	color := aBrick currentColor.
	color ifNotNil: [	aCanvas surface fillRectangle: (0@0 extent: aBrick brickBounds extent) withSolidColor: color ].