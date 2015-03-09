itemActionButtonStyleFor: aBrick

	aBrick
		width: [ (self itemHeight / 1.1) floor ];
		vSpaceFill;
		margin: #(0 1);
		pressedColor: self itemActionSelectedBackgroundColor;
		padding: { 0 . self outerBorderWidth }