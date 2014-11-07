select
	self layoutProperties minWidth: (self label layoutProperties maxWidthBlock value: self label).
	self brickRoot doLayout.
	self brickRoot changed.