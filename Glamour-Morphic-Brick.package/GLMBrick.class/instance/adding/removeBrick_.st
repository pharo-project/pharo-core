removeBrick: aBrick
	
	aBrick isBrick ifTrue: [
		aBrick brickRoot: nil.
		aBrick brickOwner: nil.
	].
	
	self removeMorph: aBrick.
	subbricks remove: aBrick ifAbsent: [ ^ aBrick ].
	^ aBrick