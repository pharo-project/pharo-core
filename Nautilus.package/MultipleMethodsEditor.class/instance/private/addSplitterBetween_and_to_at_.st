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
		fullFrame: ((0 @ newCumulatedHeight corner: 1 @ newCumulatedHeight) asLayoutFrame 
						topOffset: -2 ;
						bottomOffset: 2)