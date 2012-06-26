conversion
nextFromStream: aStream 

	| character character2 size leadingChar offset result |
	aStream isBinary ifTrue: [^ aStream basicNext].

	character := aStream basicNext.
	character ifNil: [^ nil].
	character == Character escape ifTrue: [
		self parseShiftSeqFromStream: aStream.
		character := aStream basicNext.
		character ifNil: [^ nil]].
	character asciiValue < 128 ifTrue: [
		size := state g0Size.
		leadingChar := state g0Leading.
		offset := 16r21.
	] ifFalse: [
		size :=state g1Size.
		leadingChar := state g1Leading.
		offset := 16rA1.
	].
	size = 1 ifTrue: [
		leadingChar = 0
			ifTrue: [^ character]
			ifFalse: [^ Character leadingChar: leadingChar code: character asciiValue]
	].
	size = 2 ifTrue: [
		character2 := aStream basicNext.
		character2 ifNil: [^ nil. "self errorMalformedInput"].
		character := character asciiValue - offset.
		character2 := character2 asciiValue - offset.
		result := Character leadingChar: leadingChar code: character * 94 + character2.
		^ result asUnicodeChar.
		"^ self toUnicode: result"
	].
	self error: 'unsupported encoding'.
