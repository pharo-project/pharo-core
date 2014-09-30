pagerModel: anAdapter
	
	pagerModel := anAdapter.
			
	pagerModel announcer weak 
		on: GLMNumberOfVisiblePagesChanged send: #onResized to: self.
		
	pagerModel announcer weak 
		on: GLMPagerScrollPositionChanged send: #onScrollPositionChanged: to: self.
		
	self width: self computeWidth.