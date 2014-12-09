pagerModel: aModel
	pagerModel := aModel.
	
	self addMorphBack: self buildScrollMorph.
	
	pagerBar := GLMPagerBarMorph new pagerModel: pagerModel.
	
	pagerModel announcer weak
		when: GLMPagePushed send: #onPagePushed to: self.
		
	pagerModel announcer weak
		when: GLMPagePoped send: #onPagePoped to: self.
	
	self initializeShortcuts.