innerBounds

	^ (self brickBounds origin + (self paddingLeft @ self paddingTop))
		corner: (self brickBounds corner - ((self paddingRight) @ (self paddingBottom))).