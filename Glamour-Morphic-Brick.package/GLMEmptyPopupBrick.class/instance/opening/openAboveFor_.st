openAboveFor: aBrick

	self anchorBrick: aBrick.
	self contentBrick: self newContentBrick.
	self triggerBrick: self newTriggerBrick.
	self addContentBricks.
	
	^ aBrick ifNotNil: [ self openAbove: aBrick boundsInWorld ]