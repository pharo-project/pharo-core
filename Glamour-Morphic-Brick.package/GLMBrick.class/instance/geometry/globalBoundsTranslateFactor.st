globalBoundsTranslateFactor

	^ self brickOwner ifNotNil: [ brickOwner globalBoundsTranslateFactor + self brickBounds origin ] ifNil: [ 0@0 ]