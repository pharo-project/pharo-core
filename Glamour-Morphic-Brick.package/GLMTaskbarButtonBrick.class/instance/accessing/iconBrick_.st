iconBrick: aBrick
	
	iconBrick := aBrick.
	self iconBrick
		icon: Smalltalk ui icons smallWindowIcon;
		width: [ :b | b icon width * 1.5 ];
		vSpaceFill.
	self addBrickBack: self iconBrick