processing
processSimpleGlyph: glyph contours: nContours from: entry

	| endPts  nPts iLength flags |
	endPts := Array new: nContours.
	1 to: nContours do:[:i| endPts at: i put: entry nextUShort].
	glyph initializeContours: nContours with: endPts.
	nPts := endPts last + 1.
	iLength := entry nextUShort. "instruction length"
	entry skip: iLength.
	flags := self getGlyphFlagsFrom: entry size: nPts.
	self readGlyphXCoords: entry glyph: glyph nContours: nContours flags: flags endPoints: endPts.
	self readGlyphYCoords: entry glyph: glyph nContours: nContours flags: flags endPoints: endPts.
	glyph buildContours.