tests
testAtPutBinaryAscii
	self shouldnt: [ handle at: 1 put: 32 ] raise: Error.
	self shouldnt: [ handle at: 1 put: Character space ] raise: Error