initialize
	super initialize.
	
	self brickRoot: self newBrickRoot.
	self headerBrick: self newHeaderBrick.
	self offcanvasBrick: self newOffcanvasBrick.
	self fadeBrick: self newFadeBrick