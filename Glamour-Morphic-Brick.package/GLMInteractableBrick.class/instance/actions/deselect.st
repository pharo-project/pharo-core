deselect
	self isSelected ifTrue: [
		isSelected := false.
		self changed.
	]