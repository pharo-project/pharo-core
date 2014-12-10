unsubscribeListeners

	self activeHand removeMouseListener: self.
	Morph announcer unsubscribe: self.