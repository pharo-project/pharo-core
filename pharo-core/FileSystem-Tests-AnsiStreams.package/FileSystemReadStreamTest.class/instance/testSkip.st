tests
testSkip
	self contents: #(1 2 3 4 5).
	stream skip: 3.
	self assert: stream position = 4