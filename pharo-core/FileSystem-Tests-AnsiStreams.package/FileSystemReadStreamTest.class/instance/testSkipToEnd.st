tests
testSkipToEnd
	self contents: #(1 2 3 4 5).
	stream skipTo: 10.
	self assert: stream atEnd