geometry
handleBoundsChange: aBlock
	| oldBounds newBounds |
	oldBounds := bounds.
	aBlock value.
	newBounds := bounds.
	self boundsChangedFrom: oldBounds to: newBounds.