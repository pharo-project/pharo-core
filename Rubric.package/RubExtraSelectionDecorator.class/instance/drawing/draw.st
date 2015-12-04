draw
	super draw.
	Display depth < 3
		ifTrue: [ ^ self ].
	TextEditor useSecondarySelection ifFalse:[^ self].
	self computeSelectionShapes.
	self cleanUpText.
	self drawAllSelectionShapes