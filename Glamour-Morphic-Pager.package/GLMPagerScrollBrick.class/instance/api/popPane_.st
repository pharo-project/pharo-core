popPane: isSmooth

	(isSmooth not or: [self lastPane isNil]) ifTrue: [ ^ self popPane ].
	
	self lastPane removeAllMorphs.
	self scrollTo: (pagerModel convertIndexToValue: pagerModel firstVisiblePageIndex with: self band subbricksCount) smooth: true callback: [ self popPane ]