disableDrawingWhile: aBlock
	self disableDrawing.
	aBlock ensure: [ self enableDrawing ]