brickOuterBounds
	^ (self brickBounds origin - ((self layoutProperties paddingLeft) @ (self layoutProperties paddingTop)))
		corner: (self brickBounds corner + ((self layoutProperties paddingRight) @ (self layoutProperties paddingBottom))).

