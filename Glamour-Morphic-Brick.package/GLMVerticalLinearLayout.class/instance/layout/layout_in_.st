layout: aBrick in: newBounds

	self
		layout: aBrick
		in: newBounds
		inject: aBrick paddingLeft @ aBrick paddingTop
		into: [ :origin :each |
			each wrappedBounds outerOrigin: origin.
			0@each wrappedBounds outerBounds height ]