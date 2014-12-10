pushPane: aMorph	
	|brick|
	
	brick := aMorph asBrick.
	brick layoutProperties: (GLMBrickLayoutProperties new).
	brick layoutProperties marginLeft: self paneMargin.
	brick layoutProperties marginRight: self paneMargin.
	
	self band addBrickBack: brick.
	self updatePanes