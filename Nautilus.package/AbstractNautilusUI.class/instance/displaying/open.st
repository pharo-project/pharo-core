open
	window := NautilusWindow new model: self.
	self addAll: window.
	window openInWorld.
	self setWindowTitle.