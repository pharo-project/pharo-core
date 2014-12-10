headerBrick: aBrick
	
	headerBrick ifNotNil: [self removeBrick: headerBrick].
	headerBrick := aBrick.
	
	self theme spotterWidgetThemer headerStyleFor: headerBrick.
	
	self addBrickBack: headerBrick