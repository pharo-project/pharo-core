privateBounds: aRectangle

	self wrappedBounds bounds: aRectangle.
	bounds := self globalBounds.
	fullBounds := bounds.