outerBounds

	^ (self brickBounds origin - ((self marginLeft) @ (self marginTop)))
		corner: (self brickBounds corner + ((self marginRight) @ (self marginBottom)))