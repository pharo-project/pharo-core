computeSelectionShapes
	self findRegex ~= previousFindRegex
		ifTrue: [ self computeFindReplaceShapesFrom: self clippedRectangle topLeft to: self clippedRectangle bottomRight ].
	(self selection ~= previousSelection or: [ self findRegex ~= previousFindRegex ])
		ifTrue: [ self computeSecondarySelectionShapesFrom: self clippedRectangle topLeft to: self clippedRectangle bottomRight ].
	previousFindRegex := self findRegex.
	previousSelection := self selection