noteNewOwner: aMorph 
	super noteNewOwner: aMorph.
	self textArea announcer subscribe: MorphGotFocus send: #whenGotFocus: to: self.
	self textArea announcer subscribe: MorphLostFocus send: #whenLostFocus: to: self.
	self textArea announcer subscribe: RubSelectionChanged send: #whenTextAreaSelectionChanged: to: self.
	self textArea announcer subscribe: RubTextStyleChanged send: #whenTextAreaTextStyleChanged: to: self.
