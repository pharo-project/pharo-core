pagerModel: aModel
	
	pagerModel := aModel.
		
	self pagerModel announcer weak subscribe: GLMPageSwitched send: #onPageSwitched to: self.
	self pagerModel announcer weak subscribe: GLMPagerBoundsChanged send: #onScrollBoundsChanged: to: self.
	self pagerModel announcer weak subscribe: GLMFocusedPageChanged send: #onFocusedPageChanged to: self.
		
	self updateButtons