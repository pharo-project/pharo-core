nameBrick: aBrick

	nameBrick ifNotNil: [self removeBrick: nameBrick].
	nameBrick := aBrick.
	
	self theme spotterWidgetThemer categoryTitleNameStyleFor: nameBrick.
	
	self addBrickBack: nameBrick