textBrick: aBrick

	textBrick := aBrick.
	self textBrick
		layoutProperties: GLMBrickLayoutProperties new;
		wrapped: true;
		beForSmalltalkCode.
		
	self textBrick layoutProperties
		vSpaceFill;
		hSpaceFill.
	self addBrickBack: self textBrick
	
