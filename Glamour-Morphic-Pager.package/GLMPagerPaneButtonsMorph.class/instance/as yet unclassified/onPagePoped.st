onPagePoped
	|button|
	
	button := indicatorButtons last.
	indicatorButtons removeLast.
	button announcer unsubscribe: self.
	
	self removeScrollButton: button.
	self updateIndicatorButtons.