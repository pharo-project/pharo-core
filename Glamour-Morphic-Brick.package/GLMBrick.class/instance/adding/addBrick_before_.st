addBrick: aBrick before: anotherBrick

	subbricks add: aBrick before: anotherBrick.
	self initializeBrick: aBrick.
	super addMorph: aBrick inFrontOf: anotherBrick.
	^ aBrick