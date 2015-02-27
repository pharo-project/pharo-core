menuBrick: anObject
	menuBrick := anObject.
	
	self menuBrick
		width: [ self actionbarBrick width ];
		vSpaceFill.
		
	self menuBrick layout widthDependency: [ self actionbarBrick ].
		
	self addBrickBack: self menuBrick