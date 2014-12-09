drawCircle: radius position: aPoint on: aCanvas color: aColor antialiasing: isAntialiased
	
	isAntialiased
		ifTrue: [ self drawTrachelCircle: radius position: aPoint on: aCanvas color: aColor ]
		ifFalse: [ self drawMorphicCircle: radius position: aPoint on: aCanvas color: aColor ]
	