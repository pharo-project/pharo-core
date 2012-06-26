tests
testPeekForTrue
	self contents: #(1 2 3).
	self assert: (stream peekFor: 1)
	