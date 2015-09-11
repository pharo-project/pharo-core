registerTextArea 
	super registerTextArea.
	textArea announcer when:  RubSelectionChanged send: #whenTextAreaSelectionChanged: to: self.
	textArea announcer when:  MorphGotFocus send: #whenTextAreaGotFocus: to: self.	
	textArea announcer when:  MorphLostFocus send: #whenTextAreaLostFocus: to: self.	
