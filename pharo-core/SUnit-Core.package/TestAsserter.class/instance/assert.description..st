asserting
assert: aBoolean description: aString
	aBoolean ifFalse:
		[self logFailure: aString.
		self defaultTestFailure signal: aString].