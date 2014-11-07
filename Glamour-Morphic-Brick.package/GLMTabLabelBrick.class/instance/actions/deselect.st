deselect
	self layoutProperties minWidth: 0.
	self brickRoot changed.
	self brickRoot doLayout.
	self brickRoot changed.