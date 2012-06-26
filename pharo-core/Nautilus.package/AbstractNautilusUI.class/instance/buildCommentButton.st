items creation
buildCommentButton

	^(PluggableButtonMorph
		on: self 
		getState: #commentButtonState
		action: #commentButtonAction
		label: #commentButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap