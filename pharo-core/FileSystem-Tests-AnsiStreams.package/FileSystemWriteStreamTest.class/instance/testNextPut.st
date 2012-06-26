tests
testNextPut
	stream nextPut: 42.
	self assert: self contents first = 42