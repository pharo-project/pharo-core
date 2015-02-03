initialize
	super initialize.
	
	self
		layout: GLMBrickVerticalFillProportionalLinearLayout new;
		labelBrick: self newLabelBrick;
		triangleBrick: self newTriangleBrick
	