items creation
buildCommentButton
	| button |
	
	button := (PluggableButtonMorph
		on: self 
		getState: #commentButtonState
		action: #commentButtonAction
		label: #commentButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap.
		
	self setShortcuts: #NautilusCommentShortcuts to: button.
	button submorphs first
		on: #doubleClick
		send: #toggleShowFullComment
		to: self;
		on: #mouseDown
		send: #mouseDown:
		to: button;
		on: #mouseMove
		send: #mouseMove:
		to: button;
		on: #mouseEnter
		send: #mouseEnter:
		to: button;
		on: #mouseLeave
		send: #mouseLeave:
		to: button;
		on: #mouseUp
		send: #mouseUp:
		to: button.
		
	^ button