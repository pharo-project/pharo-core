removeBrick: aBrick
	
	aBrick isBrick ifTrue: [
		aBrick brickRoot: nil.
		aBrick brickOwner: nil.
	].
	
	self removeMorph: aBrick.
	self privateSubbricks removeLink: aBrick privateBrickDoubleLink.
	aBrick privateBrickDoubleLink: nil.
	^ aBrick