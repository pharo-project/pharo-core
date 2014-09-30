pagerModel: aModel
	
	pagerModel := aModel.
		
	pagerModel announcer weak
		on: GLMPageSwitched send: #onPageSwitched to: self.
				
	pagerModel announcer weak
		on: GLMPagerBoundsChanged send: #onScrollBoundsChanged: to: self.
		
	pagerModel announcer weak
		on: GLMFocusedPageChanged send: #onFocusedPageChanged to: self.
		
	self updateIndicatorButtons.