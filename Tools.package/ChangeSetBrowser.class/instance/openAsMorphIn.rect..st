initialization
openAsMorphIn: window rect: rect
	"Add a set of changeSetBrowser views to the given top view offset by the given amount"

	| aHeight |
	contents := ''.
	aHeight := 0.25.
	self addDependent: window.		"so it will get changed: #relabel"


	window addMorph: (PluggableListMorphByItem on: self
				list: #classList
				selected: #currentClassName
				changeSelected: #currentClassName:
				menu: #classListMenu:shifted:
				keystroke: #classListKey:from:)
		frame: (((0.0@0 extent: 0.5 @ aHeight)
			scaleBy: rect extent) translateBy: rect origin).

	window addMorph: (PluggableListMorphByItem on: self
				list: #messageList
				selected: #currentSelector
				changeSelected: #currentSelector:
				menu: #messageMenu:shifted:
				keystroke: #messageListKey:from:)
		frame: (((0.5@0 extent: 0.5 @ aHeight)
			scaleBy: rect extent) translateBy: rect origin).

	 self addLowerPanesTo: window
		at: (((0@aHeight corner: 1@1) scaleBy: rect extent) translateBy: rect origin)
		with: nil