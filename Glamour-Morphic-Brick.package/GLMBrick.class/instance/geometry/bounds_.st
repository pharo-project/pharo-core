bounds: newBounds

	self brickBounds: (
		self brickOwner
			ifNotNil: [ newBounds translateBy: (self brickOwner globalBounds origin negated) ]
			ifNil: [ newBounds ] )