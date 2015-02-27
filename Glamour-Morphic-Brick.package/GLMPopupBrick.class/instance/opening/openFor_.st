openFor: aBrick

	self anchorBrick: aBrick.
	self contentBrick: self newContentBrick.
	self titleBrick: self newTitleBrick.
	self hintBrick: self newHintBrick.
	self triggerBrick: self newTriggerBrick.
	
	aBrick ifNotNil: [ self openAbove: aBrick boundsInWorld ]