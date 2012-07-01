geometry
extent: aPoint

	super extent: aPoint.
	worldState ifNotNil: [
		worldState viewBox ifNotNil: [
			worldState canvas: nil.
			worldState viewBox: bounds
		].
	].