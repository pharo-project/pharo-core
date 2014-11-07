initialize
	super initialize.
	
	subbricks := OrderedCollection new.
	
	self layoutProperties: GLMBrickLayoutProperties new.
	self layoutPolicy: GLMBrickHorizontalFillProportionalLinearLayout new.
	self renderer: GLMBrickRenderer.
	self brickRoot: self.
	
	brickBounds := 0@0 extent: 50@50.
	
	self beTransparent