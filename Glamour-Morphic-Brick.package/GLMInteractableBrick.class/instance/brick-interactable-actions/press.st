press
	self isPressed ifFalse: [
		isPressed := true.
		self changed.
	].

	^ false