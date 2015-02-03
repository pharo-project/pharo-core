textBrick: aBrick

	textBrick := aBrick.
	self textBrick
		wrapped: true;
		beForSmalltalkCode.
		
	self textBrick layoutProperties
		vSpaceFill;
		hSpaceFill.
	self addBrickBack: self textBrick
	
