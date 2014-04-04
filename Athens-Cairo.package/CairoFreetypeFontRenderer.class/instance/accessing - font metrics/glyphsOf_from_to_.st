glyphsOf: aString from: start to: end
	| len glyphs ptr lenValue glyphsSize utf8Len |
	len := end-start+1.
	utf8Len := utfConverter convert: aString from: start to: end.

	ptr := NBExternalAddress new.
	
	lenValue := ByteArray new: 4.
	lenValue nbUInt32AtOffset: 0 put: len.
			
	self convertString: utfConverter buffer len: utf8Len
		ofFont: font toGlyphs: ptr numGlyphs: lenValue x: 0.0 y: 0.0.

	glyphsSize := lenValue nbUInt32AtOffset: 0.

	glyphs := CairoGlyphsArray new: glyphsSize.

	NativeBoost memCopy: ptr to:  glyphs address size: (glyphsSize * CairoGlyphsArray elementSize).
	self freeGlyphs: ptr.

	^ glyphs
	