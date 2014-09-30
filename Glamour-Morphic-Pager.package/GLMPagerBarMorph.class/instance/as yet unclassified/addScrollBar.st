addScrollBar
	scrollBar ifNil: [
		scrollBar := GLMPagerScrollSlidingMorph new.
		scrollBar pagerModel: pagerModel.
		scrollBar height: pagerModel circleButtonSize.
		
		self addMorph: scrollBar fullFrame: (LayoutFrame 
					fractions: (0 @ 0 corner: 0 @ 0)
					offsets: (0 @ 0 corner: (scrollBar computeWidth) @ (pagerModel circleButtonSize)))
	]