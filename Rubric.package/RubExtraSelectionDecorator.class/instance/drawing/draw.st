draw
	super draw.
	Display depth < 3
		ifTrue: [ ^ self ].
	self computeSelectionShapes.
	self cleanUpText.
	self drawAllSelectionShapes