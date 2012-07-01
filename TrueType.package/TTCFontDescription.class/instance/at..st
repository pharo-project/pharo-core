accessing
at: aCharOrInteger

	| char |
	char := aCharOrInteger asCharacter.
	^ glyphs at: (char charCode) + 1.
