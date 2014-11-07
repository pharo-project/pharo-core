brickRoot: aBrick

	self brickRoot ifNotNil: [
		self brickRoot brickOwner: nil.
		self brickRoot brickRoot: nil.
		self removeMorph: self brickRoot.
		brickRoot := nil.
	].
	
	brickRoot := aBrick.
	brickRoot brickOwner: self.
	brickRoot brickRoot: self.
	self addMorphBack: brickRoot.
	
	