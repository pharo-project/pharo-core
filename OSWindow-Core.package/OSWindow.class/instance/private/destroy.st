destroy
	initialAttributes preferableDriver unregisterWindow: self.
	self validHandle destroy.
	handle := nil.
	eventHandler := nil.