remove
	self canRemove ifTrue: [
		self list removeAt: self index.
		self changedList.
		self updateIndex.
	].
