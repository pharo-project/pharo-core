registerTextArea 
	super registerTextArea.
	
	textArea announcer weak 
	when:  RubSelectionChanged send: #whenTextAreaSelectionChanged: to: self;
	when:  MorphGotFocus send: #whenTextAreaGotFocus: to: self;	
	when:  MorphLostFocus send: #whenTextAreaLostFocus: to: self.	
