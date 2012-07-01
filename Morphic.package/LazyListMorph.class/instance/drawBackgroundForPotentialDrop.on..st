drawing
drawBackgroundForPotentialDrop: row on: aCanvas
	| selectionDrawBounds |
	"shade the background darker, if this row is a potential drop target"

	selectionDrawBounds := self drawBoundsForRow: row.
	selectionDrawBounds := selectionDrawBounds intersect: self bounds.
	aCanvas fillRectangle: selectionDrawBounds color:  self color muchLighter darker