registerTextArea 
	textArea announcer when: RubExtentChanged send: #whenExtentChanged: to: self.
	textArea announcer when: RubTextChanged send: #whenTextChanged: to: self