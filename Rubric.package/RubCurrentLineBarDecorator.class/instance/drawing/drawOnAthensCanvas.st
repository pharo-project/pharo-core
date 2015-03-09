drawOnAthensCanvas
	| line bnd |
	super drawOnAthensCanvas.
	self selectionStart = self selectionStop ifFalse: [^self].
	line := self selectionStart textLine.
	bnd := (line topLeft - (self margins left @ 0)) corner: ((line bottomRight + (self margins right @ 0)) min: self clippedRectangle bottomRight).
	canvas setPaint: self selectionBarColor.
	canvas setShape: bnd.
	canvas draw 
