makeOuterBoundsFit: aRectangle
	|originDelta cornerDelta|
	
	originDelta := aRectangle origin - outerBounds origin.
	cornerDelta := aRectangle corner - outerBounds corner.
	
	outerBounds := aRectangle.
	bounds := (bounds origin + originDelta) corner: (bounds corner + cornerDelta).
	innerBounds :=  (innerBounds origin + originDelta) corner: (innerBounds corner + cornerDelta).
	