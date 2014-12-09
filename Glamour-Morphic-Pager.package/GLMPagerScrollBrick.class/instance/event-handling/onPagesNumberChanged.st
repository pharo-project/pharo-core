onPagesNumberChanged

	self maxPanes: pagerModel numberOfVisiblePages.
	self doLayout.
	self changed.
	self scrollToPane: pagerModel firstVisiblePageIndex smooth: false.
	