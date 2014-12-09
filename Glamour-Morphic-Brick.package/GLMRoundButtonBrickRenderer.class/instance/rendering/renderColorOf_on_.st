renderColorOf: aBrick on: aCanvas
	|rectangle radius diameter bounds|
	
	bounds := aBrick brickBounds.
		
	radius := (aBrick height / 2) roundDownTo: 1.0.
	diameter := radius * 2.
	rectangle := bounds withHeight: diameter.
	
	self isRoundedLeft ifTrue: [ 
		self drawCircle: radius position: bounds topLeft on: aCanvas color: aBrick currentColor antialiasing: self antialiasing.
		rectangle := (rectangle withWidth: rectangle width - radius) translateBy: radius@0.
	].

	self isRoundedRight ifTrue: [
		self drawCircle: radius position: bounds topRight - (diameter@0) on: aCanvas color: aBrick currentColor antialiasing: self antialiasing.
		rectangle := rectangle withWidth: rectangle width - radius.
	].
	
	aCanvas fillRectangle: rectangle basicFillStyle: (SolidFillStyle color: aBrick currentColor).