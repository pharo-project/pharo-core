pagerModel: aModel
	pagerModel := aModel.
	
	self addMorphBack: (GLMPagerScrollMorph new pagerModel: pagerModel).
	
	pagerBar := GLMPagerBarMorph new pagerModel: pagerModel.
	
	pagerModel announcer weak
		on: GLMPagePushed send: #onPagePushed to: self.
		
	pagerModel announcer weak
		on: GLMPagePoped send: #onPagePoped to: self.
	
	self initializeShortcuts.