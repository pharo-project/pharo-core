tests
testSkipTo
	self contents: #(1 2 3 4 5).
	stream skipTo: 3.
	self assert: stream position = 4