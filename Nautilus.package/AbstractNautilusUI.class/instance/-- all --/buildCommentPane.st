buildCommentPane
	commentTextArea := PluggableTextMorph
		on: self
		text: #getComments
		accept: #addComment:notifying:
		readSelection: nil
		menu: #codePaneMenu:shifted:.		
	commentTextArea
		askBeforeDiscardingEdits: true;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	
	self setCommentShorcutsTo: commentTextArea.	
	commentTextArea spaceFillWeight: 1.

	^ commentTextArea