pagerModel: aModel

	pagerModel := aModel.
	
	self pagerModel announcer weak when: GLMPagePushed send: #onPagePushed to: self.
	self pagerModel announcer weak when: GLMPagePoped send: #onPagePoped to: self.
	
	self initializeShortcuts.
	
	self scrollBrick: self newScrollBrick.
	self pagerBar: self newPagerBar