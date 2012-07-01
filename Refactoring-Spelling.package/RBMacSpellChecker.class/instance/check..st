public
check: aString
	| position errors string result |
	position := 1.
	errors := OrderedCollection new.
	string := aString convertToWithConverter: Utf16Converter.
	[ position <= string size ] whileTrue: [ 
		result := self
			primitiveCheckSpelling: string
			startingAt: position.
		(result first between: 1 and: string size)
			ifFalse: [ ^ errors ].
		errors addLast: (result first to: result first + result second - 1).
		position := result first + result second ].
	^ errors