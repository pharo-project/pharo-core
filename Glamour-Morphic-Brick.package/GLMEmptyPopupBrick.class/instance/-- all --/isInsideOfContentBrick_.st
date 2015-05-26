isInsideOfContentBrick: anEvent
	^ self contentBrick 
		ifNil: [false]
		ifNotNil: [:aBrick | aBrick boundsInWorld containsPoint: anEvent position]