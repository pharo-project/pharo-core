contentsBrick: aBrick
	
	contentsBrick ifNotNil: [self removeBrick: contentsBrick].
	contentsBrick := aBrick.
		
	self theme spotterWidgetThemer spotterContentsStyleFor: contentsBrick.

	self addBrickBack: contentsBrick