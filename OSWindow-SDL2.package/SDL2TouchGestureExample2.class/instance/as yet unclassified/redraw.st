redraw
	self redrawTrackPad.
	self drawLara.
	self drawMoves.
	self drawCircle.
	hasAbortedSwipe
		ifTrue: [ self displayAbortMessage ].
	self update