drawPotentialDropBackroundForItem: item at: index on: aCanvas
	| drawBounds  |
	
	drawBounds := self drawBoundsForItem: item at: index.
	drawBounds := self ensureFrame: drawBounds.
	aCanvas frameRectangle: drawBounds color: self potentialDropColor