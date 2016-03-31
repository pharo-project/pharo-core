initializeProgress

	progressMorph := BorderedMorph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapCentering: #center;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellInset: 5;
		layoutInset: 30@0;
		color: Smalltalk ui theme backgroundColor;
		yourself.
	
	progressMorph
		addMorph: ('Updating critics...' asMorph
			color: Smalltalk ui theme disabledTextColor;
			yourself)
	 