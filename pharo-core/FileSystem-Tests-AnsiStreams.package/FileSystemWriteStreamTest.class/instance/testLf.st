tests
testLf
	stream lf.
	self assert: self contents first = Character lf asInteger