itemActionButtonStyleFor: aBrick

	aBrick
		width: [ (self itemHeight / 1.1) floor ];
		vSpaceFill;
		pressedColor: self itemActionSelectedBackgroundColor;
		padding: { 0 . self outerBorderWidth }