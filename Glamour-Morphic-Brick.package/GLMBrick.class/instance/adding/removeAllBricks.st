removeAllBricks

	self privateSubbricks do: [ :each |
		each privateBrickDoubleLink: nil.
		each isBrick ifTrue: [
			each brickRoot: nil.
			each brickOwner: nil ] ].
	
	self privateSubbricks removeAll.
	self removeAllMorphs