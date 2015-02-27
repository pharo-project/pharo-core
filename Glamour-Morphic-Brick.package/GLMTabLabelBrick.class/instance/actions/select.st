select
	self minWidth: [ (self label layout maxWidth brickValue: self label) min: self brickRoot width ].
	self brickRoot doLayoutForce.
	self brickRoot changed.