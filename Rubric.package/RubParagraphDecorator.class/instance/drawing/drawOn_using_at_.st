drawOn: aCanvas using: aDisplayScanner at: aPosition
	self drawingEnabled ifFalse: [ ^self ].
	self selectionStart ifNil: [ ^self ].
	self selectionStop ifNil: [ ^self ].
	self handleDrawingOn: aCanvas using: aDisplayScanner at: aPosition.
	next drawOn: aCanvas using: aDisplayScanner at: aPosition