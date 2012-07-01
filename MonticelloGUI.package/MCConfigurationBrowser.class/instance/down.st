actions
down
	self canMoveDown ifTrue: [
		self list swap: self index with: self index + 1.
		self index: self index + 1.
		self changedList.
	].
