brickOuterBounds

	^ (self brickBounds origin - ((self layoutProperties marginLeft) @ (self layoutProperties marginTop)))
		corner: (self brickBounds corner + ((self layoutProperties marginRight) @ (self layoutProperties marginBottom))).

