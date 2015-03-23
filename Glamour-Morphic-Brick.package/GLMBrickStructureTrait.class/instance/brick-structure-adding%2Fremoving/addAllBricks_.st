addAllBricks: aCollection

	self privateAddAllBricks: aCollection.
	aCollection do: [ :b | b wrappedBounds markWidthDirty; markHeightDirty ].
	self doLayoutForce