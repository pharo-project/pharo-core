asserting
assert: aBoolean description: aString resumable: resumableBoolean
	| exception |
	aBoolean ifFalse:
		[self logFailure: aString.
		exception := resumableBoolean
			ifTrue: [self classForTestResult resumableFailure]
			ifFalse: [self defaultTestFailure].
		exception signal: aString].