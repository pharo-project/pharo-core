initialize
	super initialize.
	self changeTableLayout;
		changeListDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellPositioning: #center;
		listCentering: #center;
		wrapCentering: #center;
		"for visual centering of the circle buttons"
		cellInset: EdgeGripMorph new defaultHeight