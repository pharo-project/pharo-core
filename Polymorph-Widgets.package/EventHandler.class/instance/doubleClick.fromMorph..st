events
doubleClick: event fromMorph: sourceMorph 
	^ self
		send: doubleClickSelector
		to: doubleClickRecipient
		withEvent: event
		fromMorph: sourceMorph