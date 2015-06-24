buildCodePanelWithoutComment
	sourceCodePanel removeAllMorphs.
	classCommentTextModel announcer unsubscribe: self.
	classCommentTextModel := nil.
	sourceCodePanel 
		addMorph: sourceTextWidget
		fullFrame: LayoutFrame identity