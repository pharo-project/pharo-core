addBrickFirst: aBrick
	|result|
	result := self privateAddBrickFirst: aBrick.
	self doLayoutForce.
	^ result