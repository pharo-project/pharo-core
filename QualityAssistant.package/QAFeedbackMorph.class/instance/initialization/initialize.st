initialize
	super initialize.
	
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 3;
		color: Color transparent.
		
	self
		addMorphBack: (text := 'Helpful?' asMorph);
		addMorphBack: (self initializePositiveFeedback);
		addMorphBack: (self initializeNegativeFeedback)