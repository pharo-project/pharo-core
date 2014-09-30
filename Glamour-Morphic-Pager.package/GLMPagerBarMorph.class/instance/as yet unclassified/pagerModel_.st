pagerModel: aModel
	
	pagerModel := aModel.
	
	pagerModel announcer weak
		on: GLMPagePushed send: #onPagePushed: to: self.
		
	pagerModel announcer weak
		on: GLMPagePoped send: #onPagePoped to: self.
	
	self addButtons.
	self addScrollBar.