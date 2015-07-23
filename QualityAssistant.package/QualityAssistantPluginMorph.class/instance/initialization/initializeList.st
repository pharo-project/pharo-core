initializeList
	listMorph := NonfocusablePluggableIconListMorph new
		model: self;
		getListSelector: #getCritics;
		setIndexSelector:  #selected:;
		wrapSelector: #displayCritic:;
		hideHScrollBarIndefinitely: true;
		getIconSelector: #iconFor:at:;
		vResizing: #spaceFill; 
		hResizing: #spaceFill;
		yourself.
		