tests
testNextMatchTrue
	self contents: #(1 2 3).
	self assert: (stream nextMatchFor: 1)