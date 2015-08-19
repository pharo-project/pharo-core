endGesture: aSymbol
	currentGestureSymbol = aSymbol
		ifTrue: [ self reinitializeGesture ]