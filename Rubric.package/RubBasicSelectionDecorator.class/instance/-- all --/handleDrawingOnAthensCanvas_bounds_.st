handleDrawingOnAthensCanvas: aCanvas bounds: aRectangle
	self selectionStart ifNil: [ ^ self ].
	self selectionStop ifNil: [ ^self ].
	super handleDrawingOnAthensCanvas: aCanvas bounds: aRectangle