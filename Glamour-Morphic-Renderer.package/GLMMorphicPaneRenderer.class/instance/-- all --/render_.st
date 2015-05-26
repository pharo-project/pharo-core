render: aPane
	container := GLMMorphic containerMorph.
	self renderContainerFor: aPane.
	aPane on: GLMMatchingPresentationsChanged send: #actOnMatchingPresentationChanged: to: self.
	(aPane presentations hasTitle or: [aPane presentations hasTitleIcon]) ifTrue: [
		aPane on: GLMPresentationToolbarUpdated send: #actOnPresentationToolbarUpdated: to: self. ].
	^ container