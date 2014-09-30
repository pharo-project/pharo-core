recomputeScrollBar
	
	scrollBar ifNotNil: [
		scrollBar width: scrollBar computeWidth.
		scrollBar setWidthAfterResizing.
	]