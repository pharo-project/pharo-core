addBrickBack: aBrick

	subbricks add: aBrick.
	
	aBrick isBrick ifTrue: [
		aBrick brickRoot: self brickRoot.
		aBrick brickOwner: self.
	].
	
	super addMorphBack: aBrick.
	^ aBrick