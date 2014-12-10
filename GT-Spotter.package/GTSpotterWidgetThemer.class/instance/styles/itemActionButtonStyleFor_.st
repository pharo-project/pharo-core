itemActionButtonStyleFor: aBrick

	aBrick widthBlock: [ aBrick normalImage width + aBrick layoutProperties horizontalPadding ].
	aBrick pressedColor: self itemSelectedBackgroundColor darker.
	aBrick layoutProperties paddingLeft: self outerBorderWidth.
	aBrick layoutProperties paddingRight: self outerBorderWidth.