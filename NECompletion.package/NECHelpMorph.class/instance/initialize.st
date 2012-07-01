initialize
initialize

	| text |
	super initialize.
	self setLabel: 'eCompletion Keyboard Help'.
	"self height: ECMenuMorph itemHeight * 60."
	text := PluggableTextMorph
				on: self
				text: #contents
				accept: nil
				readSelection: nil
				menu: nil.
	self
		addMorph: text
		frame: (0 @ 0 corner: 1.0 @ 1.0).
	text lock.