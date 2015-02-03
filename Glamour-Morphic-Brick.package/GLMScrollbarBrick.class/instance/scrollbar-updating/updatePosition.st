updatePosition
	|height top width|
	
	self scrollPane band height = 0 ifTrue: [
		bar brickBounds: ((0@0) extent: 0@0).
		^ self changed.
	].
	
	height := self calculateScrollbarHeight.
	top := self calculateScrollbarTopOffset.
	
	width := (height >= self height)
		ifTrue: [ 0 ]
		ifFalse: [ self width ].
	
	bar brickBounds: ((0@top) extent: width@height).
	
	self changed