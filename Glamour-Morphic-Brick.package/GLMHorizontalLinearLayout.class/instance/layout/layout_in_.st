layout: aBrick in: newBounds

	self
		layout: aBrick
		in: newBounds
		inject: aBrick paddingLeft @ aBrick paddingTop
		into: [ :origin :each |
			each wrappedBounds outerOrigin: origin.
			each wrappedBounds outerBounds width@0 ]