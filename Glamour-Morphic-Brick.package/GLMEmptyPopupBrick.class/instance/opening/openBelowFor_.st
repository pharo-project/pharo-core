openBelowFor: aBrick

	self anchorBrick: aBrick.
	self triggerBrick: self newTriggerBrick.
	self contentBrick: self newContentBrick.
	self addContentBricks.
	
	^ aBrick ifNotNil: [ self openBelow: aBrick boundsInWorld ]