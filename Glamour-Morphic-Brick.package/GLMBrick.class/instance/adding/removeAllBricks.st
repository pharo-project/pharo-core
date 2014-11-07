removeAllBricks

	subbricks do: [ :each |
		each isBrick ifTrue: [
			each brickRoot: nil.
			each brickOwner: nil ] ].
	
	subbricks removeAll.
	self removeAllMorphs