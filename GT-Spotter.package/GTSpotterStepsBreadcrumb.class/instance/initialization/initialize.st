initialize
	super initialize.
	
	self layoutPolicy: (GLMBrickHorizontalFillLinearLayout new).
		
	self band: self newBand
	