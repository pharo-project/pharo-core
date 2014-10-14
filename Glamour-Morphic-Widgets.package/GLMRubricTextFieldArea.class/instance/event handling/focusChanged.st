focusChanged
	super focusChanged.
	
	self hasFocus ifFalse: [
		self disable.
	].