tests
testNextMatchFalse
	self contents: #(1 2 3).
	self deny: (stream nextMatchFor: 5)