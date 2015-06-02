buildCodePanelWithoutComment
	sourceCodePanel removeAllMorphs.
	classCommentTextModel announcer unsubscribe: self.
	classCommentTextModel := nil.
	sourceCodePanel 
		addMorph: sourceTextArea
		fullFrame: LayoutFrame identity