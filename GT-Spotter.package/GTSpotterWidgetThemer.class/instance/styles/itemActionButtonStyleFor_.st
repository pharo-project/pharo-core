itemActionButtonStyleFor: aBrick

	aBrick
		width: [ aBrick normalImage width + aBrick layoutProperties horizontalPadding ];
		pressedColor: self itemSelectedBackgroundColor darker;
		padding: { 0 . self outerBorderWidth }