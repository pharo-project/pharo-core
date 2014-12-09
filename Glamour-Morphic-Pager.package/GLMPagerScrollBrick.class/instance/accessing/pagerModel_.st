pagerModel: aModel
	
	pagerModel := aModel.
	maxPanes := aModel numberOfVisiblePages.
	
	pagerModel announcer weak
		when: GLMPagePushed send: #onPagePushed: to: self.
	
	pagerModel announcer weak
		when: GLMPagePoped send: #onPagePoped: to: self.
						
	pagerModel announcer weak
		when: GLMPagerSynchronizeScrollAnnouncement send: #onSynchronizeScroll: to: self.
		
	pagerModel announcer weak 
		when: GLMPagerScrollPositionChanged send: #onScrollPositionChanged: to: self.
		
	pagerModel announcer weak 
		when: GLMNumberOfVisiblePagesChanged send: #onPagesNumberChanged to: self.
		
	pagerModel announcer weak 
		when: GLMSelectedPageChanged send: #onSelectedPageChanged to: self.
		
	pagerModel announcer weak 
		when: GLMPagerPreviewUpdate send: #onPagePreviewUpdate: to: self.