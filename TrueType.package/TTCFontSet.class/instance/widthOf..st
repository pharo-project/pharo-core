measuring
widthOf: aCharacter

	| encoding |
	encoding := aCharacter leadingChar.
	^ (fontArray at: encoding + 1) widthOf: aCharacter.
