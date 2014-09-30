initialize
	super initialize.
	self 
		color: Color transparent;
		borderWidth: 0;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	self 
		initializeTransform;
		initializeScrollbar.
	
	currentScrollValue := 0.
	paneCount := 0.
	maxPanes := 2.
	panes := OrderedCollection new.
	focus := Dictionary new.