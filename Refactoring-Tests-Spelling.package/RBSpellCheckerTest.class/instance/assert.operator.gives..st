utilities
assert: aSourceString operator: aSelector gives: anExpectedString
	| result |
	result := self normalizer perform: aSelector with: aSourceString.
	self
		assert: result = anExpectedString
		description: 'Got ' , result printString , ', but expected ' , anExpectedString printString.
	result := self normalizer perform: aSelector with: anExpectedString.
	self
		assert: result = anExpectedString
		description: aSelector printString , ' is not idempotent'