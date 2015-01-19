itemActionbarStyleFor: aBrick

	aBrick layoutPolicy: GLMBrickHorizontalFillLinearLayout new.
	
	aBrick layoutProperties
		marginRight: self outerBorderWidth.
	
	self itemActionbarInvisibleStyleFor: aBrick.