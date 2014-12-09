doLayout
	
	currentScrollDelta := self convertScrollValue: (self pagerModel convertIndexToValue: self pagerModel firstVisiblePageIndex).
	super doLayout