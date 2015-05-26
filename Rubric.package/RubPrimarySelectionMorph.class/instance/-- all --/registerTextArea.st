registerTextArea 
	super registerTextArea.
	textArea announcer subscribe:  RubSelectionChanged send: #whenTextAreaSelectionChanged: to: self.
	textArea announcer subscribe:  MorphGotFocus send: #whenTextAreaGotFocus: to: self.	
	textArea announcer subscribe:  MorphLostFocus send: #whenTextAreaLostFocus: to: self.	
