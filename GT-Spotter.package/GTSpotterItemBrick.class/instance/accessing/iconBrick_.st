iconBrick: aBrick

	iconBrick ifNotNil: [self removeBrick: iconBrick].
	iconBrick := aBrick.
	
	self theme spotterWidgetThemer itemIconStyleFor: iconBrick.
	
	self addBrickBack: iconBrick