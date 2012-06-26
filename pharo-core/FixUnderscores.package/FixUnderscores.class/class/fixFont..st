fixing
fixFont: aFont
	| glyph underline |
	glyph := aFont characterFormAt: $_.
	"save arrow glyph to arrowChar codepoint"
	((glyph copy: (0@aFont ascent corner: glyph extent)) isAllWhite
		and: [(aFont characterFormAt: self arrowChar) isAllWhite])
			ifTrue: [aFont characterFormAt: self arrowChar put: glyph].
	"make underscore glyph"
	glyph fillWhite.
	underline := aFont ascent + 1.
	glyph fillBlack: (1@underline extent: glyph width-1@1).
	aFont characterFormAt: $_ put: glyph.