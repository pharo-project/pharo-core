pagerModel: aModel

	pagerModel := aModel.
	
	self pagerModel announcer weak subscribe: GLMPagePushed send: #onPagePushed to: self.
	self pagerModel announcer weak subscribe: GLMPagePoped send: #onPagePoped to: self.
	
	self initializeShortcuts.
	
	self scrollBrick: self newScrollBrick.
	self pagerBar: self newPagerBar