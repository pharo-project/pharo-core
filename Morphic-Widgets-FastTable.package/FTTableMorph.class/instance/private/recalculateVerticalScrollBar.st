recalculateVerticalScrollBar
	| interval delta pageDelta visibleRows numberOfRows |
	
	self hasDataSource ifFalse: [ ^ self ].

	self recalculateVerticalScrollBarVisibilityIfHidden: [ ^ self ].
	 
	visibleRows := self container calculateVisibleRows.	
	numberOfRows := self dataSource numberOfRows.
	interval := (visibleRows / numberOfRows) asFloat.
	delta := 5/(self container bottom).
	pageDelta := (self innerBounds height - 10) / (self container bottom).
	self verticalScrollBar 
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval