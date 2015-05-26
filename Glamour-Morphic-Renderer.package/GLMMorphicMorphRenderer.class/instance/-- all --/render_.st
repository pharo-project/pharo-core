render: aMorphPresentation
	container := GLMMorphic containerMorph.
	container 
		changeTableLayout;
		listDirection: #leftToRight;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	
	container addMorphBack: (self morphFrom: aMorphPresentation).
	
	aMorphPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.

	^ container