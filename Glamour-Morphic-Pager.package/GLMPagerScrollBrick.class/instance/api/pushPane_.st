pushPane: aMorph	
	
	aMorph layoutProperties: (GLMBrickLayoutProperties new).
	aMorph layoutProperties marginLeft: self paneMargin.
	aMorph layoutProperties marginRight: self paneMargin.
	
	self band addBrickBack: aMorph.
	self updatePanes