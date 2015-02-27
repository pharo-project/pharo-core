addBrick: aBrick after: otherBrick
	|result|
	result := self privateAddBrick: aBrick after: otherBrick.
	self doLayoutForce.
	^ result