drawing - private
drawBoundsForItem: item at: index
	"calculate the bounds that row should be drawn at.  This might be outside our bounds!"

	| topLeft drawBounds width |
	
	width := item widthToDisplayInList: self.
	(width > self maxWidth) ifTrue: [ self maxWidth: width ].
	topLeft := self topLeft x @ (self topLeft y + self headerHeight + ((index - 1) * self itemHeight)).
	drawBounds := topLeft extent: width @ self itemHeight.
	^ drawBounds