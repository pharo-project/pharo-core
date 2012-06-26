tests
testCrLf
	stream crlf.
	self assert: self contents first = Character cr asInteger.
	self assert: self contents second = Character lf asInteger.