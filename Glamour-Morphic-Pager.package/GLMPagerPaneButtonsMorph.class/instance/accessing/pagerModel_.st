pagerModel: aModel
	
	pagerModel := aModel.
		
	pagerModel announcer weak
		when: GLMPageSwitched send: #onPageSwitched to: self.
				
	pagerModel announcer weak
		when: GLMPagerBoundsChanged send: #onScrollBoundsChanged: to: self.
		
	pagerModel announcer weak
		when: GLMFocusedPageChanged send: #onFocusedPageChanged to: self.
		
	self updateIndicatorButtons.