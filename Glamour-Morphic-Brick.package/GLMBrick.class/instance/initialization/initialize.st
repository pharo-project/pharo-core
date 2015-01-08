initialize
	super initialize.
	super color: Color transparent.
	
	subbricks := GLMBrickDoubleLinkedList new.
	
	self layoutProperties: GLMBrickLayoutProperties new.
	self layoutPolicy: GLMBrickHorizontalFillProportionalLinearLayout new.
	self renderer: GLMBrickRenderer new.
	self brickRoot: self.
	
	brickBounds := 0@0 extent: 50@50.
	
	self beTransparent