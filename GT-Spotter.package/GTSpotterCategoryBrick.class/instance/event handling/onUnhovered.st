onUnhovered
	self stepModel selectedCategory == self category
		ifFalse: [ self titleBrick hideActionbar ]