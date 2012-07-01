code panel
buildCodePanelWithCommentOnTop
	| splitter delta |
	
	splitter := ProportionalSplitterMorph new beSplitsTopAndBottom.
	delta := 2.

	splitter addLeftOrTop: commentTextArea.
	splitter addRightOrBottom: sourceTextArea.

	sourceCodePanel
		addMorph: commentTextArea
		fullFrame: (LayoutFrame 
						fractions: (0@0 corner: 1@0.5) 
						offsets: (0@0 corner: 0@(delta negated))).
	sourceCodePanel
		addMorph: splitter
		fullFrame: (LayoutFrame 
						fractions: (0@0.5 corner: 1@0.5) 
						offsets: (0@(delta negated) corner: 0@delta)).
	sourceCodePanel 
		addMorph: sourceTextArea
		fullFrame: (LayoutFrame 
						fractions: (0@0.5 corner: 1@1) 
						offsets: (0@delta corner: 0@0)).