updatePanes

	self layoutPolicy layout: self in: nil.
	self band layoutPolicy layout: self band in: nil.
	
	self changed.