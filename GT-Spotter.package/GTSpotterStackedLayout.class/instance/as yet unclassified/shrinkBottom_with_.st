shrinkBottom: aRectangle with: aBrick

	^ aRectangle bottom: (aRectangle bottom - aBrick globalOuterBounds height)