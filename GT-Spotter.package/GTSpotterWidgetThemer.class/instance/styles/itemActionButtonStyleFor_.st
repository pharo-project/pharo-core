itemActionButtonStyleFor: aBrick

	aBrick
		widthBlock: [ 16 + aBrick layoutProperties horizontalPadding ];
		pressedColor: self itemSelectedBackgroundColor darker.
	
	aBrick layoutProperties
		marginTop: 4;
		marginBottom: 4;
		paddingTop: self outerBorderWidth;
		paddingBottom: self outerBorderWidth;
		paddingLeft: self outerBorderWidth;
		paddingRight: self outerBorderWidth