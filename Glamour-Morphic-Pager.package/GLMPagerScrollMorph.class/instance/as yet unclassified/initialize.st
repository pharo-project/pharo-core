initialize
	super initialize.
	
	self beTransparent.
	
	Morph announcer weak 
		on: MorphGotFocus send: #focusChanged: to: self.