drawOnAthensCanvas: aCanvas bounds: aRectangle color: aColor
	self drawingEnabled ifFalse: [ ^self ].
	self selectionStart ifNil: [ ^self ].
	self selectionStop ifNil: [ ^self ].
	self handleDrawingOnAthensCanvas: aCanvas bounds: aRectangle.
	next drawOnAthensCanvas: aCanvas bounds: aRectangle color: aColor