updateButtonStatus
	self previousButton enabled: self history hasPrevious.
	self nextButton enabled: self history hasNext.