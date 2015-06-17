noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	ghostText := self paragraphProvider defaultGhostTextMorph.
	textColor := self defaultTextColor. 
	self textArea announcer weak subscribe: MorphGotFocus send: #showHideGhostText to: self.	
	self textArea announcer weak subscribe: MorphLostFocus send: #showHideGhostText to: self.