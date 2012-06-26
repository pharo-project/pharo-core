as yet unclassified
glyphInfoOf: aCharacter into: glyphInfoArray

	| index f code |
	index := aCharacter leadingChar + 1.
	fontArray size < index ifTrue: [^ self questionGlyphInfoInto: glyphInfoArray].
	(f := fontArray at: index) ifNil: [^ self questionGlyphInfoInto: glyphInfoArray].

	code := aCharacter charCode.
	((code between: f minAscii and: f maxAscii) not) ifTrue: [
		^ self questionGlyphInfoInto: glyphInfoArray.
	].
	f glyphInfoOf: aCharacter into: glyphInfoArray.
	glyphInfoArray at: 5 put: self.
	^ glyphInfoArray.
