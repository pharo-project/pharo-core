packagesDiffToDisplay
	^ packagesDiff select: [ :each | each canBeDisplay ]