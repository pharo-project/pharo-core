registerScrollChanges: aSelector

	self announcer weak
		on: PaneScrolling 
		send: aSelector
		to: self model