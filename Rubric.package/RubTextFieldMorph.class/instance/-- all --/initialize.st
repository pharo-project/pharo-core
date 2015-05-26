initialize
	super initialize.
	self textArea announcer subscribe: RubReturnEntered  send: #whenReturnEntered: to: self.
	self scrollbarsShowNever.
	self extent: self extent