addBrick: aBrick before: otherBrick
	|result|
	result := self privateAddBrick: aBrick before: otherBrick.
	self doLayoutForce.
	^ result