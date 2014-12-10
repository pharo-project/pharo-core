resultsBrick: aBrick
	
	resultsBrick ifNotNil: [self removeBrick: resultsBrick].
	resultsBrick := aBrick.

	self theme spotterWidgetThemer resultsPaneStyleFor: resultsBrick.
	
	self addBrickBack: resultsBrick