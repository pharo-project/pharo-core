calculateScrollbarTopOffset
	|bandHeight|
	bandHeight := self approximateBandHeight.
	bandHeight = 0 ifTrue: [ ^ 0 ].
	
	^ (self height / bandHeight * self scrollPane band brickBounds top abs) floor.