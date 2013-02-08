events
doubleClickTimeout: event fromMorph: sourceMorph 
	^ self
		send: doubleClickTimeoutSelector
		to: doubleClickTimeoutRecipient
		withEvent: event
		fromMorph: sourceMorph