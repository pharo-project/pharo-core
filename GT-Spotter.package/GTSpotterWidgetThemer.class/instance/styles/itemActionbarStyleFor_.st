itemActionbarStyleFor: aBrick

	aBrick layoutPolicy: GLMBrickHorizontalFillLinearLayout new.
	
	aBrick layoutProperties
		horizontalPercent: 0;
		marginRight: self outerBorderWidth.
	
	self itemActionbarInvisibleStyleFor: aBrick.