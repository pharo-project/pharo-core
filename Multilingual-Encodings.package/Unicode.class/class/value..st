instance creation
value: code

	| l |
	code < 256 ifTrue: [^ Character value: code].
	l := Locale currentPlatform languageEnvironment leadingChar.
	^ Character leadingChar: l code: code.
