calculateScrollbarHeight
	|bandHeight|
	bandHeight := self approximateBandHeight.
	bandHeight = 0 ifTrue: [ ^ 0 ].
	
	^ (self scrollPane height / bandHeight * self height) ceiling.
	