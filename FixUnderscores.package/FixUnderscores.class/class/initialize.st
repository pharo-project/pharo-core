initialization
initialize
	"self initialize"

	self fixFonts.
"
Do not inform, while running non-interactively
	self inform: 'Fonts were _fixed_.\The arrow glyph is now Character value ' withCRs,
		self arrowChar asInteger hex, ' ($', self arrowChar asString, ')'.
"