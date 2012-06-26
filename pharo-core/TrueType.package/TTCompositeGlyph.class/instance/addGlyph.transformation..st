accessing
addGlyph: aGlyph transformation: aMatrix
	glyphs := glyphs copyWith: (aMatrix -> aGlyph)