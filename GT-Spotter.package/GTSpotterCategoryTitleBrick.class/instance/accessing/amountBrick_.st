amountBrick: aBrick

	amountBrick ifNotNil: [self removeBrick: amountBrick].
	amountBrick := aBrick.
	
	self theme spotterWidgetThemer categoryAmountStyleFor: amountBrick.
	
	self addBrickBack: amountBrick