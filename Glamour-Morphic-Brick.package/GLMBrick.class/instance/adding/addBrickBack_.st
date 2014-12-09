addBrickBack: aBrick
	|link|
	
	link := self privateSubbricks add: aBrick.
	aBrick privateBrickDoubleLink: link.
	
	self initializeBrick: aBrick.
	super addMorphBack: aBrick.
	^ aBrick