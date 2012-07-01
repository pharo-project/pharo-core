processing
processIndexToLocationTable: entry format: indexToLocFormat
"glyphOffset    ULONG[numGlyphs]   An array that contains each glyph's
                                 offset into the Glyph Data Table.
"	| glyphOffset offset|
	glyphOffset := Array new: nGlyphs+1.
	1 to: nGlyphs+1 do:[:i|
		(indexToLocFormat = 0) ifTrue:[ "Format0: offset/2 is stored"
			offset := entry nextUShort * 2.
		] ifFalse:["Format1: store actual offset"
			offset := entry nextULong].
		glyphOffset at: i put: offset].
	^glyphOffset