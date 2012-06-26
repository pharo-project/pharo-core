tests
testPeek
	self contents: #(1 2 3).
	self assert: stream peek = 1.
	self assert: stream next = 1.