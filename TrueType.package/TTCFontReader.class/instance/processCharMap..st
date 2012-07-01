as yet unclassified
processCharMap: assoc
	"Process the given character map"

	| glyph cmap encode0 encode1 char value null |
	cmap := assoc value.
	null := (glyphs at: (cmap at: Character space asUnicode + 1) + 1) copy.
	null contours: #().

	encode0 := Array new: 256 withAll: glyphs first.
	encode1 := Array new: 65536 withAll: glyphs first.

	0 to: 255 do: [:i |
		char := Character value: i.
		glyph := glyphs at: (cmap at: char asUnicode + 1) + 1.
		encode0 at: i+1 put: glyph.
	].
	Character separators do: [:c |
		encode0 at: (c asciiValue + 1) put: null.
	].
	0 to: 65536 - 1 do: [:i |
		value := cmap at: i+1.
		value = 65535 ifFalse: [ "???"
			encode1 at: i+1 put: (glyphs at: value+1).
		]
	].

	^ {encode0. encode1}.
