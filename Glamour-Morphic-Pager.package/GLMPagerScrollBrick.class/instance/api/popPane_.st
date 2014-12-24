popPane: isSmooth

	(isSmooth not or: [self lastPane isNil]) ifTrue: [ ^ self popPane ].
	
	self band removeBrick: (self band lastSubbrick).
	self scrollTo: (pagerModel convertIndexToValue: pagerModel firstVisiblePageIndex with: self band subbricksCount) smooth: true callback: [ self updatePanes ]