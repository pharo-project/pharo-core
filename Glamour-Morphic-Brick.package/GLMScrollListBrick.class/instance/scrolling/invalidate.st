invalidate

	self band removeAllBricks.
	self band brickBounds: (self band brickBounds translateBy: (0@ self scrollPositionTop negated)).
	self update.
	self verticalScrollbar update.
	self changed