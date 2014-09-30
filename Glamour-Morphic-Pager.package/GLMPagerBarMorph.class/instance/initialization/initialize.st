initialize
	super initialize.
		
	self 
		beTransparent
		changeProportionalLayout;
		borderWidth: 0.
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap