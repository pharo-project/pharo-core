render: aPresentation
	container := GLMMorphic containerMorph.
	container 
		addMorph: (self renderObject: aPresentation currentPresentation) 
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	aPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	^ container