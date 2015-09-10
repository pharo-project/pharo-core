runFrom: start to: end

	self start: (self findNode: start); end: (self findNode: end).
	^ self run