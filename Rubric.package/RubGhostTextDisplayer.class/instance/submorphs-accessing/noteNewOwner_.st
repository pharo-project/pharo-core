noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	ghostText := self paragraphProvider defaultGhostTextMorph.
	textColor := self defaultTextColor. 
	self textArea announcer weak when: MorphGotFocus send: #showHideGhostText to: self.	
	self textArea announcer weak when: MorphLostFocus send: #showHideGhostText to: self.