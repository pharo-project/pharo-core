actionbarBrick: aBrick

	actionbarBrick ifNotNil: [self removeBrick: actionbarBrick].
	actionbarBrick := aBrick.
	
	self theme spotterWidgetThemer itemActionbarStyleFor: aBrick.
	
	self addBrickBack: actionbarBrick