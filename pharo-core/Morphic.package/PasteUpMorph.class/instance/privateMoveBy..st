private
privateMoveBy: delta

	super privateMoveBy: delta.
	worldState ifNotNil: [
		worldState viewBox ifNotNil: [
			worldState viewBox: bounds
		].
	].