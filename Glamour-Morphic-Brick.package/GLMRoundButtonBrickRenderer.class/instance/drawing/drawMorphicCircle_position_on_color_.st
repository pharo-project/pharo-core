drawMorphicCircle: radius position: aPoint on: aCanvas color: aColor

	aCanvas fillOval: (Rectangle origin: aPoint extent: ((2*radius)@(2*radius))) color: aColor borderWidth: 0 borderColor: Color transparent.