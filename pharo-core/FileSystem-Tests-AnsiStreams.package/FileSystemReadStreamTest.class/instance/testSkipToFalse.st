tests
testSkipToFalse
	self contents: #(1 2 3 4 5).
	self deny: (stream skipTo: 10).
	