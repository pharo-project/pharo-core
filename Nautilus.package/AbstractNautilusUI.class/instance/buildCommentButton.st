items creation
buildCommentButton
	| button |
	
	button := (PluggableButtonMorph
		on: self 
		getState: #commentButtonState
		action: #commentButtonAction
		label: #commentButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap.
		
	self setGlobalShorcutsTo:  button.
	^ button