as yet unclassified
initialize 
	super initialize.
	self on: #mouseDown send: #delete to: self.
	self startStepping