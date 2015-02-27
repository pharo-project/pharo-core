headerBrick: anObject
	headerBrick := anObject.
	
	self headerBrick
		hSpaceFill;
		height: self defaultHeaderHeight;
		padding: #(0 5);
		window: self.
		
	self addBrickBack: self headerBrick