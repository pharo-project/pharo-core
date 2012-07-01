processing
processGlyphDataTable: entry offsets: offsetArray
	"Read the actual glyph data from the font.
	offsetArray contains the start offsets in the data for each glyph."
	| initialOffset |
	initialOffset := entry offset.
	glyphs := Array new: nGlyphs.
	1 to: nGlyphs do:[:i | 
		glyphs at: i put: (TTGlyph new glyphIndex: i-1)].
	'Reading glyph data' 
		displayProgressFrom: 1 to: nGlyphs 
		during: [:bar| | origin glyphLength corner glyphOffset nContours glyph nextOffset |
					1 to: nGlyphs do: [:glyphIndex |
							bar current: glyphIndex.
							glyph := glyphs at: glyphIndex.
							glyphOffset := offsetArray at: glyphIndex.
							nextOffset := offsetArray at: glyphIndex+1.
							glyphLength := nextOffset - glyphOffset.
					glyphLength = 0 ifFalse: [
							entry offset: initialOffset + glyphOffset.
							nContours := entry nextShort.
							origin := entry nextShort @ entry nextShort.
							corner := entry nextShort @ entry nextShort.
							glyph bounds: (origin corner: corner).
					nContours >= 0 ifTrue: [
							self processSimpleGlyph: glyph contours: nContours from: entry
				] ifFalse:[
				glyph := self processCompositeGlyph: glyph contours: nContours from: entry.
				glyphs at: glyphIndex put: glyph]]]
	].