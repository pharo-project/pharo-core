render: aPane
	container := GLMMorphic containerMorph.
	self renderContainerFor: aPane.
	aPane on: GLMMatchingPresentationsChanged send: #actOnMatchingPresentationChanged: to: self.
	^ container