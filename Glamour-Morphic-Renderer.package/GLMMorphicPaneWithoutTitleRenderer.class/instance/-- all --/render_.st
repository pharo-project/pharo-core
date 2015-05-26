render: aPane
	paneMorph := GLMMorphic containerMorph.
	aPane
		on: GLMMatchingPresentationsChanged
		send: #actOnMatchingPresentationsChanged:
		to: self.
	self renderMorphFor: aPane.
	^ paneMorph