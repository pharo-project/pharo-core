labelBrick: aBrick

	labelBrick ifNotNil: [self removeBrick: labelBrick].
	labelBrick := aBrick.
	
	self theme spotterWidgetThemer itemLabelStyleFor: labelBrick.
	
	self addBrickBack: labelBrick