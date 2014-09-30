registerScrollChanges: aSelector

	self announcer weak
		when: PaneScrolling 
		send: aSelector
		to: self model