pagerModel: aModel
	
	pagerModel := aModel.
	
	self pagerModel announcer weak subscribe: GLMPagePushed send: #onPagePushed: to: self.
	self pagerModel announcer weak subscribe: GLMPagePoped send: #onPagePoped to: self.
	
	self sliderBrick: self newSliderBrick.
	self buttonsBrick: self newButtonsBrick.