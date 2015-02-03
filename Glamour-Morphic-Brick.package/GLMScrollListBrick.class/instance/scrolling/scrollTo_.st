scrollTo: anInteger
	|brick index|
	self band removeAllBricks.
	self moveBandTop.
	visibleIndex := nil.
	
	self adaptor count > 0 ifTrue: [
		index := (anInteger max: 1) min: self adaptor count.
		brick := self getMorphAt: index recycled: nil.
		brick 	withWidth: self band width.
		brick 	doLayout.
	
		brick brickBounds: ((0@(0 max: ((self height - brick height) / 2))) extent: brick extent).
		self band addBrickBack: brick ].
	
	self update.
	self changed
	
	
	
	