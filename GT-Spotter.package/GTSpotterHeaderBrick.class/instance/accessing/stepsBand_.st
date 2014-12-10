stepsBand: aBrick

	stepsBrick ifNotNil: [self removeBrick: stepsBrick].
	stepsBrick := aBrick.
	
	self theme spotterWidgetThemer stepsBandStyleFor: stepsBrick.
	
	self addBrickBack: aBrick