drawBoundsForIndex: index
	"calculate the bounds that row should be drawn at.  This might be outside our bounds!"

	| topLeft drawBounds |
	
	topLeft := self topLeft x @ (self topLeft y + self headerHeight + ((index - 1) * self itemHeight)).
	drawBounds := topLeft extent: self width @ self itemHeight.
	^ drawBounds