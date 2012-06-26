tests
testSkipToTrue
	self contents: #(1 2 3 4 5).
	self assert: (stream skipTo: 4).
	