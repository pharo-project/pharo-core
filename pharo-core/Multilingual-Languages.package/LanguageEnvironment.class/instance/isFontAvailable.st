fonts support
isFontAvailable
	| encoding f |
	encoding := self leadingChar + 1.
	f := TextStyle defaultFont.
	f isFontSet ifTrue: [
		f fontArray
			at: encoding
			ifAbsent: [^ false].
		^ true
	].
	^ encoding = 1