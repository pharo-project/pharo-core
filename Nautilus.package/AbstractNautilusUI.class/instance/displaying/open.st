open
	window := NautilusWindow new model: self.
	self addAll: window.
	window openInWorld.
	self changed:#sourceCodeFrom:.
	self setWindowTitle.