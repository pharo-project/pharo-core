onUnhovered
	self stepModel selectedCategory == self categoryProcessor
		ifFalse: [ self hideActionbar ]