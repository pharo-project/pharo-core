press
	self isPressed ifFalse: [
		isPressed := true.
		self announcer announce: (GLMPagerButtonPressed new).
	]