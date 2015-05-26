render: aPresentation
	container := GLMMorphic containerMorph.
	container 
		changeTableLayout;
		listDirection: #leftToRight;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	
	container addMorphBack: aPresentation displayValue widget widget.
	
	aPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.

	^ container