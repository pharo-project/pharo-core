render: anActionListPresentation
	container := GLMMorphic containerMorph. 
	container 
		changeTableLayout;
		listDirection: #leftToRight;
		vResizing: #spaceFill;
		hResizing: #spaceFill.

	container addMorphBack: (self morphFrom: anActionListPresentation).
	
	anActionListPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	
	^container 