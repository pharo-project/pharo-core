addBrickBack: aBrick

	subbricks add: aBrick.
	self initializeBrick: aBrick.
	super addMorphBack: aBrick.
	^ aBrick