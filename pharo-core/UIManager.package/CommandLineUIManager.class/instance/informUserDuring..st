ui requests
informUserDuring: aBlock
	self
		displayProgress: ''
		at: 0@0
		from: 1 to: 100
		during: aBlock