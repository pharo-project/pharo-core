initializeScrollbar
	scrollBar := ScrollBar new 
		model: self;
		setValueSelector: #scrollValue:;
		yourself.
	scrollBar 
		borderWidth: 0;
		borderColor: #inset.
