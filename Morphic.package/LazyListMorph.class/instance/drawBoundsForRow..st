list management
drawBoundsForRow: row
	"calculate the bounds that row should be drawn at.  This might be outside our bounds!"
	| topLeft drawBounds |
	topLeft := self topLeft x @ (self topLeft y + ((row - 1) * (font height))).
	drawBounds := topLeft extent: self width @ font height.
	^drawBounds