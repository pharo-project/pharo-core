testing
testTooLargeAnIntegerInALiteralByteArray
	self setUpForErrorsIn: '#[ 1 2 ` 8-bit integer or right bracket expected ->`256 4 5]'.
	self enumerateAllSelections