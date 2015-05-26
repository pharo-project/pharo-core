lastActivePresentation
	^ lastActivePresentation ifNil: [ 
		self panes last lastActivePresentation ]