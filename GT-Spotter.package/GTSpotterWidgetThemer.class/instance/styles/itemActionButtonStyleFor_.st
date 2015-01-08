itemActionButtonStyleFor: aBrick

	aBrick widthBlock: [ 16 + aBrick layoutProperties horizontalPadding ].
	aBrick layoutProperties marginTop: 4.
	aBrick layoutProperties marginBottom: 4.
	aBrick pressedColor: self itemSelectedBackgroundColor darker.
	aBrick layoutProperties paddingTop: self outerBorderWidth.
	aBrick layoutProperties paddingBottom: self outerBorderWidth.
	aBrick layoutProperties paddingLeft: self outerBorderWidth.
	aBrick layoutProperties paddingRight: self outerBorderWidth.