initializeBrick: aBrick
	
	aBrick isBrick ifTrue: [
		aBrick brickRoot: self brickRoot.
		aBrick brickOwner: self ]