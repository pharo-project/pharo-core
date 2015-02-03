pushPane: aMorph	
	|brick|
	
	brick := aMorph.
	brick layoutProperties: (GLMBrickLayoutProperties new).
	brick layoutProperties marginLeft: self paneMargin.
	brick layoutProperties marginRight: self paneMargin.
	
	self band addBrickBack: brick.
	self updatePanes