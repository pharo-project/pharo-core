setWidthAfterResizing
	| left right |
	
	left := ( pagerModel circleButtonSize + pagerModel dependencyButtonSize ) * (pagerModel firstVisiblePageIndex - 1).
	right := left + self computeWidth.
	
	self layoutFrame: (
		LayoutFrame 
			fractions: (0 @ 0 corner: 0 @ 0)
			offsets: (left @ 0 corner: right @ self height)
	).
	
	pagerModel notifyScrollerBoundsChanged: (owner left + left )@(owner left + right).