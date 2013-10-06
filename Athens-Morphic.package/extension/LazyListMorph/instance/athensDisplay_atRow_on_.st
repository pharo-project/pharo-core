athensDisplay: item atRow: row on: aCanvas 
	"Display the given item at the given row on the given
	canvas."
	
	| c drawBounds frame attrs useDefaultFont |
"
	drawBounds := self drawBoundsForRow: row.
	c := self colorForRow: row.
	aCanvas
		morphicDrawString: item asString
		at: drawBounds topLeft
		font: self font
		color: (self colorForRow: row)"