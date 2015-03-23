addBrickBack: aBrick
	|result|
	result := self privateAddBrickBack: aBrick.
	aBrick wrappedBounds markWidthDirty; markHeightDirty.
	self doLayoutForce.
	^ result