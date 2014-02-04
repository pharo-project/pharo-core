getGlyphWidth: aCharacter
	utfConverter convert: aCharacter asString from: 1 to: 1.
	cairoFont getExtentsOf: utfConverter buffer into: glyphExtents.
	^ glyphExtents x_advance