doLayout
	
	self layoutPolicy layout: self in: self brickBounds.
	self update.
	self verticalScrollbar update.