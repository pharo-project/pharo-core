render: aPane
	"we just register for the announcement"
	
	aPane
		on: GLMMatchingPresentationsChanged
		send: #actOnMatchingPresentationsChanged:
		to: self
	