mouseWheel: event

	self scrollBy: (self calculateVelocity: event) direction: event direction.