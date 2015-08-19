ifCurrentGestureAllows: aSymbol then: aBlock
	(self currentGestureAllows: aSymbol)
		ifTrue: aBlock