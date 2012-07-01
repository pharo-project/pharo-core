accessing
stepTimeIn: aSystemWindow
	^ (selectionUpdateTime ifNil: [0]) * 10 max: 1000