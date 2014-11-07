brickGlobalOuterBounds

	^ self brickOwner
		ifNotNil: [ self brickOuterBounds translateBy: brickOwner globalBounds origin ]
		ifNil: [ super bounds ]
