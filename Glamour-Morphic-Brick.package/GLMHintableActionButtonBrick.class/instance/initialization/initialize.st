initialize
	super initialize.
	
	self beHelp.
	self addUnhoverAction: [ :aBrick :anEvent |
		self class asyncTaskUniqueInstance terminate.
		(aBrick globalBounds containsPoint: anEvent position)
			ifFalse: [ self class closeHint ] ]