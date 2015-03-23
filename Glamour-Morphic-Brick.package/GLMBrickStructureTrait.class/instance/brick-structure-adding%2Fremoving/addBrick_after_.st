addBrick: aBrick after: otherBrick
	|result|
	result := self privateAddBrick: aBrick after: otherBrick.
	aBrick wrappedBounds markWidthDirty; markHeightDirty.
	self doLayoutForce.
	^ result