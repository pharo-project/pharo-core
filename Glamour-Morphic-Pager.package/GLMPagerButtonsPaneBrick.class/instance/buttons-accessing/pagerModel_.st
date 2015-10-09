pagerModel: aModel
	
	pagerModel := aModel.
		
	self pagerModel announcer weak when: GLMPageSwitched send: #onPageSwitched to: self.
	self pagerModel announcer weak when: GLMPagerBoundsChanged send: #onScrollBoundsChanged: to: self.
	self pagerModel announcer weak when: GLMFocusedPageChanged send: #onFocusedPageChanged to: self.
		
	self updateButtons