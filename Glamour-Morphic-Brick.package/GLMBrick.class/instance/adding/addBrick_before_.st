addBrick: aBrick before: anotherBrick
	|link|
	
	link := self privateSubbricks add: aBrick beforeLink: anotherBrick privateBrickDoubleLink.
	aBrick privateBrickDoubleLink: link.
	self initializeBrick: aBrick.
	super addMorph: aBrick inFrontOf: anotherBrick.
	^ aBrick