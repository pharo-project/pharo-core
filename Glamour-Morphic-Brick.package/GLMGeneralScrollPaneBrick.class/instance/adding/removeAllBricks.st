removeAllBricks

	band subbricks do: [ :each |
		each isBrick ifTrue: [
			each brickRoot: nil.
			each brickOwner: nil ] ].
	
	band subbricks removeAll.
	band removeAllMorphs