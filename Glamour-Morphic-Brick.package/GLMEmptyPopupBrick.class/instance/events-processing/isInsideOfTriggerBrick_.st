isInsideOfTriggerBrick: anEvent
	^ self triggerBrick 
		ifNil: [false]
		ifNotNil: [:aBrick | aBrick boundsInWorld containsPoint: anEvent position ]