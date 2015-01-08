renderImageOf: aBrick on: aCanvas
	|image|
	
	image := aBrick currentImage.
	
	image ifNotNil: [
		image isForm ifTrue: [
			aCanvas setPaint: (GLMBrick resizeImage: image scale: (aBrick extent / image extent)).
			aCanvas draw ]
		ifFalse: [ |path bounds|
			path := aCanvas createPath: [ :builder | image pathOn: builder ].
			
			bounds := GLMBrickLayoutBounds on: ((aBrick brickInnerBounds origin - aBrick brickBounds origin) extent: aBrick brickInnerBounds extent) of: image.
			bounds makeOuterBoundsFit: bounds bounds.
			
			aCanvas pathTransform
				translateBy: bounds innerBounds origin;
				scaleBy: bounds innerBounds extent.
				
			aCanvas
				setPaint: image color;
				drawShape: path ] ].