registerTextArea 
	textArea announcer subscribe: RubExtentChanged send: #whenExtentChanged: to: self.
	textArea announcer subscribe: RubTextChanged send: #whenTextChanged: to: self