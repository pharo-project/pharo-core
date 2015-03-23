addBrickFirst: aBrick
	|result|
	result := self privateAddBrickFirst: aBrick.
	aBrick wrappedBounds markWidthDirty; markHeightDirty.
	self doLayoutForce.
	^ result