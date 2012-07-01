row management
display: item atRow: row on: aCanvas 
	"Display the given item at the given row on the given
	canvas."
	
	| c drawBounds frame attrs useDefaultFont |
	drawBounds := self drawBoundsForRow: row.
	c := self colorForRow: row.
	
	item listRenderOn: aCanvas atRow: row bounds: drawBounds color: c from: self.
	
	row = self mouseDownRow
		ifTrue: [aCanvas 
					frameRectangle: (self selectionFrameForRow: row)
					width: 1
					colors: {c. Color transparent}
					dashes: #(1 1)]