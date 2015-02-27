pagerModel: anAdapter
	
	pagerModel := anAdapter.
			
	pagerModel announcer weak 
		subscribe: GLMNumberOfVisiblePagesChanged send: #onResized to: self.
		
	pagerModel announcer weak 
		subscribe: GLMPagerScrollPositionChanged send: #onPositionChanged: to: self.
		
	self width: self computeWidth