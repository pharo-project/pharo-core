packagesDiffRemoved
	^ packagesDiff select: [ :each | each isRemoved ]