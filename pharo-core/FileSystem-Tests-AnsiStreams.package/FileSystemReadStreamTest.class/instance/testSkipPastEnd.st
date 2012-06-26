tests
testSkipPastEnd
	self contents: #(1 2 3 4 5).
	stream skip: 10.
	self assert: stream atEnd