initialize
	super initialize.
		
	self 
		beTransparent;
		changeTableLayout;
		changeListDirection: #leftToRight;
		cellPositioning: #center;
		listCentering: #center;
		wrapCentering: #center;
		hResizing: #shrinkWrap.
	
	indicatorButtons := OrderedCollection new