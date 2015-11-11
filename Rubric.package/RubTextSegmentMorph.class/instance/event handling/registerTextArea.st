registerTextArea 
	textArea announcer weak 
	when: RubExtentChanged send: #whenExtentChanged: to: self;
	when: RubTextChanged send: #whenTextChanged: to: self