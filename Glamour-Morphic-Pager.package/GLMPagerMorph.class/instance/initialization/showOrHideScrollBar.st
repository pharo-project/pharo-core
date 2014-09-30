showOrHideScrollBar
	
	(pagerModel size > 1)
		ifTrue: [ self addMorphBack: pagerBar ]
		ifFalse: [ self removeMorph: pagerBar ].