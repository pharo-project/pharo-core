showOrHideScrollBar
	
	((pagerModel size > 1) & (self showScrollBarWhenNeeded))
		ifTrue: [ self addMorphBack: pagerBar ]
		ifFalse: [ self removeMorph: pagerBar ].