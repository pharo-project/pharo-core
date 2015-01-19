renderImageOf: aBrick on: aCanvas
	|image|
	
	image := aBrick currentImage.
	
	image ifNotNil: [
		aCanvas
			translucentImage: (GLMBrick resizeImage: image scale: (aBrick extent / image extent))
			at: aBrick brickBounds origin ]