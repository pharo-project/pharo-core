itemActionbarVisibleStyleFor: aBrick

	aBrick layoutProperties minWidthBlock: [ :actionbar | actionbar subbricks inject: (actionbar layoutProperties horizontalPadding + actionbar layoutProperties horizontalMargin) into: [ :width :each | width + each brickOuterBounds width ] ].