initialization
initialize
	super initialize.
	self color: self class backgroundColor.
	self on: #mouseDown send: #delete to: self.
	self
		when: #positionChanged
		send: #updateDetail
		to: self