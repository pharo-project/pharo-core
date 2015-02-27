markDirty: aBrick

	self markLayoutDirty: aBrick owner.
	aBrick wrappedBounds markWidthDirty
	