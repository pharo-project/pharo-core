addEditor: anEditor

	editors addFirst: anEditor.
	anEditor 
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	
	anEditor when: #vScroll send: #scrollFromEditor: to: self.

	current := anEditor.
	self updateScroller