globalBoundsTranslateFactor

	^ self brickOwner ifNotNil: [ brickOwner privateGlobalBoundsTranslateFactor + self brickBounds origin ] ifNil: [ 0@0 ]