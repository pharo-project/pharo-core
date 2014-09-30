check
	self isChecked ifFalse: [
		isChecked := true.
		self announcer announce: (GLMPagerButtonChecked new).
	]