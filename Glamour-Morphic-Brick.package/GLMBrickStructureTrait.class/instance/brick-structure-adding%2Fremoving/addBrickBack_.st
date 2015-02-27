addBrickBack: aBrick
	|result|
	result := self privateAddBrickBack: aBrick.
	self doLayoutForce.
	^ result