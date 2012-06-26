tests
testNotAtEnd
	self contents: #(1 2 3).
	self deny: stream atEnd