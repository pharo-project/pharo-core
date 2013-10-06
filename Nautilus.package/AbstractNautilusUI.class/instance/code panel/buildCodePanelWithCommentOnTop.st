buildCodePanelWithCommentOnTop
	| splitter delta |
	
	splitter := ProportionalSplitterMorph new beSplitsTopAndBottom.
	delta := 2.

	splitter addLeftOrTop: commentTextArea.
	splitter addRightOrBottom: multipleMethodsEditor.

	sourceCodePanel
		addMorph: commentTextArea
		fullFrame: ( (0@0 corner: 1@0.5) asLayoutFrame
						 bottomRightOffset: 0@(delta negated)).
	sourceCodePanel
		addMorph: splitter
		fullFrame: ( (0@0.5 corner: 1@0.5) asLayoutFrame
						topLeftOffset: 0@(delta negated) ; bottomRightOffset: 0@delta).
	sourceCodePanel 
		addMorph: multipleMethodsEditor
		fullFrame:  ((0@0.5 corner: 1@1) asLayoutFrame
						topLeftOffset: (0@delta )).