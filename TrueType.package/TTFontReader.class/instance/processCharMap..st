processing
processCharMap: assoc
	"Process the given character map"

	| charTable glyph cmap |
	cmap := assoc value.
	charTable := Array new: 256 withAll: glyphs first. "Initialize with default glyph"

	assoc key = 1 ifTrue: "Mac encoded table"
		[1 to: (cmap size min: charTable size) do:
			[:i |
			glyph := glyphs at: (cmap at: i) + 1.
			charTable at: (self macToWin: i) put: glyph]].

	assoc key = 3 ifTrue: "Win encoded table"
		[1 to: (cmap size min: charTable size) do:
			[:i |
			glyph := glyphs at: (cmap at: i) + 1.
			charTable at: i put: glyph]].

	^ charTable