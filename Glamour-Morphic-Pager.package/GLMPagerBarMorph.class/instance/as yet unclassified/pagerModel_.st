pagerModel: aModel
	
	pagerModel := aModel.
	
	pagerModel announcer weak
		when: GLMPagePushed send: #onPagePushed: to: self.
		
	pagerModel announcer weak
		when: GLMPagePoped send: #onPagePoped to: self.
	
	self addButtons.
	self addScrollBar.