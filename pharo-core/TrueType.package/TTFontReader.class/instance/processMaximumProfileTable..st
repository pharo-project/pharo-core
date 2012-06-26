processing
processMaximumProfileTable: entry
"
numGlyphs         USHORT      The number of glyphs in the font.
"
	entry skip: 4. "Skip Table version number"
	nGlyphs := entry nextUShort.