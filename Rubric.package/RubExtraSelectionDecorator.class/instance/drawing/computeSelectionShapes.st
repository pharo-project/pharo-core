computeSelectionShapes
	self computeFindReplaceShapesFrom: self clippedRectangle topLeft to: self clippedRectangle bottomRight.
	self computeSecondarySelectionShapesFrom: self clippedRectangle topLeft to: self clippedRectangle bottomRight