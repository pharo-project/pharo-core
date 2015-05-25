noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	self textArea announcer weak subscribe: MorphGotFocus send: #textAreaGotFocus: to: self.	
	self textArea announcer weak subscribe: MorphLostFocus send: #textAreaLostFocus: to: self.