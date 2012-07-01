match
matchEvent: keyboardEvent
	
	self buffer add: keyboardEvent.
	currentEvent := keyboardEvent.

	self dispatch: self buffer.