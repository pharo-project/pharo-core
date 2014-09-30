onPagesNumberChanged

	self maxPanes: pagerModel numberOfVisiblePages.
	self basicUpdateSizing.
	self layoutPanes.
	self scrollToPane: pagerModel firstVisiblePageIndex smooth: false.