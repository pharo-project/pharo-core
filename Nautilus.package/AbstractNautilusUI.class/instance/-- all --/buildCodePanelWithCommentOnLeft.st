buildCodePanelWithCommentOnLeft
	| splitter delta |
	
	splitter := ProportionalSplitterMorph new.
	delta := 2.

	splitter addLeftOrTop: commentTextArea.
	splitter addRightOrBottom: multipleMethodsEditor.

	sourceCodePanel
		addMorph: commentTextArea
		fullFrame: ( (0@0 corner: 0.5@1) asLayoutFrame 
						bottomRightOffset: (delta negated)@0).
	sourceCodePanel
		addMorph: splitter
		fullFrame:  ((0.5@0 corner: 0.5@1) asLayoutFrame 
						topLeftOffset: (delta negated)@0;  bottomRightOffset: delta@0).
	sourceCodePanel 
		addMorph: multipleMethodsEditor
		fullFrame: ( (0.5@0 corner: 1@1) asLayoutFrame 
						topLeftOffset: (delta@0)).