isFitsInParent

	^ self brickOwner
		ifNil: [ self brickBounds containsRect: (self brickOuterBounds origin extent: self textSize) ]
		ifNotNil: [
			self brickOwner brickBounds extent >= self textSize ]
				