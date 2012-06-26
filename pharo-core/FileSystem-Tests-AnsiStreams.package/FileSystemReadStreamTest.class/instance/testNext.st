tests
testNext
	self contents: #(1 2 3).
	self assert: stream next = 1