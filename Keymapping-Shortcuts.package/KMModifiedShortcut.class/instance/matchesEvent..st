as yet unclassified
matchesEvent: aKeyboardEvent
	^ (self modifier matchesEvent: aKeyboardEvent) 
		and: [self character matchesEvent: aKeyboardEvent]