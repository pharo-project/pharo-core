uncheck
	self isChecked ifTrue: [
		isChecked := false.
		self announcer announce: (GLMPagerButtonUnChecked new).
	]