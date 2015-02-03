renderRightTriangle: aBrick on: aCanvas
	|a b c width height gap|
	
	gap := aBrick themer spotterThemer previewArrowGapHack.
	aCanvas fillRectangle: (aBrick brickBounds withWidth: gap) color: aBrick color.
	
	width := aBrick brickBounds width - gap.
	height := aBrick brickBounds height.
	
	a := aBrick brickBounds topLeft + (gap @ ((height / 2 - width) max: 0)).
	b := aBrick brickBounds topLeft + (gap @ ((height / 2 + width) min: height)).
	c := aBrick brickBounds topRight + (0 @ (height / 2)).
	
	self renderTriangle: aBrick on: aCanvas with: { a asIntegerPoint . b asIntegerPoint . c asIntegerPoint}