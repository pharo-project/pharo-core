itemActionButtonStyleFor: aBrick

	aBrick
		width: [ aBrick normalImage width + aBrick layoutProperties horizontalPadding ];
		pressedColor: self itemActionSelectedBackgroundColor;
		padding: { 0 . self outerBorderWidth }