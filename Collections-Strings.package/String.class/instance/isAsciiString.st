testing
isAsciiString

	| c |
	c := self detect: [:each | each asciiValue > 127] ifNone: [nil].
	^ c isNil.
