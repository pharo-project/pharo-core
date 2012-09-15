private
addSplitterBetween: e and: below to: panel at: newCumulatedHeight
	| splitter |
	splitter := ProportionalSplitterMorph new
		beSplitsTopAndBottom;
		yourself.
	splitter
		addLeftOrTop: e;
		addRightOrBottom: below.
	panel
		addMorph: splitter
		fullFrame:
			(LayoutFrame fractions: (0 @ newCumulatedHeight corner: 1 @ newCumulatedHeight) offsets: (0 @ -2 corner: 0 @ 2))