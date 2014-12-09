select
	self layoutProperties minWidthBlock: [ (self label layoutProperties maxWidthBlock value: self label) min: self brickRoot width ].
	self brickRoot doLayout.
	self brickRoot changed.