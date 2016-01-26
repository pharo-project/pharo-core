glyphsOf: aString from: start to: end
	| len ptr glyphs lenValue glyphsSize utf8Len error |

	len := end-start+1.
	utf8Len := utfConverter convert: aString from: start to: end.

	ptr := CairoGlyphsArray externalNew: utf8Len.
	lenValue := ByteArray new: 4.
	lenValue nbUInt32AtOffset: 0 put: len.
			
	error := self 
		convertString: utfConverter buffer 
		len: utf8Len
		ofFont: font 
		toGlyphs: ptr
		numGlyphs: lenValue 
		x: 0.0 
		y: 0.0.
		
	error = CAIRO_STATUS_SUCCESS ifFalse: [  ^ CairoGlyphsArray new: 0 ].

	glyphsSize := lenValue nbUInt32AtOffset: 0.
   font getExtentsOfGlyphs: ptr getHandle ofLength: glyphsSize into: glyphExtents.
	advance := glyphExtents width @ glyphExtents height.
	
	glyphs := CairoGlyphsArray new: glyphsSize.
	LibC memCopy: ptr getHandle to: glyphs getHandle size: (glyphsSize * glyphs typeSize).
	
	self freeGlyphs: ptr getHandle.
		
	^ glyphs 