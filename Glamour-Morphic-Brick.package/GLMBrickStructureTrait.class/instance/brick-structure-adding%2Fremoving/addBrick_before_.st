addBrick: aBrick before: otherBrick
	|result|
	result := self privateAddBrick: aBrick before: otherBrick.
	aBrick wrappedBounds markWidthDirty; markHeightDirty.
	self doLayoutForce.
	^ result