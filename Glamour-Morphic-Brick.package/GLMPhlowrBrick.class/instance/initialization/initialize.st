initialize
	super initialize.
		
	self
		layoutPolicy: GLMBrickVerticalFillProportionalLinearLayout new;
		titleBrick: self newTitleBrick.
		
	self layoutProperties	hSpaceFill; vSpaceFill.