testRepeat

	self assert: ('123' repeat: 1) = '123'.
	self assert: ('123' repeat: 2) = '123123'.
	self should: [('123' repeat: 0)] raise: Error.
	self should: [('123' repeat: -1)] raise: Error.