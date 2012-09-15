code panel
buildCodePanelWithCommentOnLeft
	| splitter delta |
	
	splitter := ProportionalSplitterMorph new.
	delta := 2.

	splitter addLeftOrTop: commentTextArea.
	splitter addRightOrBottom: multipleMethodsEditor.

	sourceCodePanel
		addMorph: commentTextArea
		fullFrame: (LayoutFrame 
						fractions: (0@0 corner: 0.5@1) 
						offsets: (0@0 corner: (delta negated)@0)).
	sourceCodePanel
		addMorph: splitter
		fullFrame: (LayoutFrame 
						fractions: (0.5@0 corner: 0.5@1) 
						offsets: ((delta negated)@0 corner: delta@0)).
	sourceCodePanel 
		addMorph: multipleMethodsEditor
		fullFrame: (LayoutFrame 
						fractions: (0.5@0 corner: 1@1) 
						offsets: (delta@0 corner: 0@0)).