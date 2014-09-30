deselect
	self isSelected ifTrue: [
		isSelected := false.
		self announcer announce: (GLMPagerButtonDeselected new).
	]