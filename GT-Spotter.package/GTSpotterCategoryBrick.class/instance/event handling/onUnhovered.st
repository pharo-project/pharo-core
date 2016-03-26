onUnhovered
	(self stepModel isCategorySelected: self category)
		ifFalse: [ self titleBrick hideActionbar ]