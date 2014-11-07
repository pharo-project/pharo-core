pagerModel: aModel
	
	pagerModel := aModel.
	maxPanes := aModel numberOfVisiblePages.
	
	pagerModel announcer weak
		on: GLMPagePushed send: #onPagePushed: to: self.
	
	pagerModel announcer weak
		on: GLMPagePoped send: #onPagePoped: to: self.
						
	pagerModel announcer weak
		on: GLMPagerSynchronizeScrollAnnouncement send: #onSynchronizeScroll: to: self.
		
	pagerModel announcer weak 
		on: GLMPagerScrollPositionChanged send: #onScrollPositionChanged: to: self.
		
	pagerModel announcer weak 
		on: GLMNumberOfVisiblePagesChanged send: #onPagesNumberChanged to: self.
		
	pagerModel announcer weak 
		on: GLMSelectedPageChanged send: #onSelectedPageChanged to: self.
		
	pagerModel announcer weak 
		on: GLMPagerPreviewUpdate send: #onPagePreviewUpdate: to: self.