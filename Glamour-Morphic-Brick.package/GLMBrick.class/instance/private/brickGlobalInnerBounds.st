brickGlobalInnerBounds

	^ self brickOwner
		ifNotNil: [ self brickInnerBounds translateBy: brickOwner globalBounds origin ]
		ifNil: [ super bounds ]