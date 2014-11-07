initialize
	super initialize.
	
	self beTransparent.
	
	self brickRoot: GLMBrick new.
	self brickRoot layoutPolicy: GLMBrickHorizontalFillProportionalLinearLayout new.