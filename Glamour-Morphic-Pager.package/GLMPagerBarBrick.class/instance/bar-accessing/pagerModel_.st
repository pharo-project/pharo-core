pagerModel: aModel
	
	pagerModel := aModel.
	
	self pagerModel announcer weak when: GLMPagePushed send: #onPagePushed: to: self.
	self pagerModel announcer weak when: GLMPagePoped send: #onPagePoped to: self.
	
	self sliderBrick: self newSliderBrick.
	self buttonsBrick: self newButtonsBrick.