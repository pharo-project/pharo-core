render: aBrick on: athensCanvas
	|path|
	
	path := athensCanvas createPath: [ :builder | aBrick pathOn: builder ].
	athensCanvas pathTransform
		scaleBy: aBrick brickInnerBounds extent;
		translateBy: (aBrick brickInnerBounds origin - aBrick brickBounds origin).

	athensCanvas
		setPaint: aBrick color;
		drawShape: path