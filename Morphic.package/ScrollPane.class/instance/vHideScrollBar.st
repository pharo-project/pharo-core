scrolling
vHideScrollBar
	self vIsScrollbarShowing ifFalse: [^self].
	self removeMorph: scrollBar.
	retractableScrollBar ifFalse: [self resetExtent].
	
