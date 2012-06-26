testing
testAt

	self assert: 1  equals: (shortRunArray at: 2).
	self assert: 2  equals: (shortRunArray at: 4).
	self assert: 3  equals: (shortRunArray at: 6).