pagerModel: anAdapter
	
	pagerModel := anAdapter.
			
	pagerModel announcer weak 
		when: GLMNumberOfVisiblePagesChanged send: #onResized to: self.
		
	pagerModel announcer weak 
		when: GLMPagerScrollPositionChanged send: #onScrollPositionChanged: to: self.
		
	self width: self computeWidth.