showOrHideScrollBar
	
	((self pagerModel size > 1) & (self showScrollBarWhenNeeded))
		ifTrue: [ (self hasSubbrick: self pagerBar)
			ifFalse: [ self addBrickBack: self pagerBar ] ]
		ifFalse: [ self removeBrick: self pagerBar ].