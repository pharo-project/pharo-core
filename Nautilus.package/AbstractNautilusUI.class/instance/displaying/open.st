open
	window := NautilusWindow new model: self.
	self addAll: window.
	self setWindowTitle.
	self registerToAnnouncements.
	window announcer when: WindowClosed send: #unregisterToAnnouncements to: self.
	window openInWorld
	