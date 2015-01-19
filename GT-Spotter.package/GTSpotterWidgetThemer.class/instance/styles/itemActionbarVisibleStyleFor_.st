itemActionbarVisibleStyleFor: aBrick

	aBrick layoutProperties
		staticWidth: [ :actionbar | actionbar subbricks inject: (actionbar layoutProperties horizontalPadding + actionbar layoutProperties horizontalMargin) into: [ :width :each | width + each brickOuterBounds width ] ].