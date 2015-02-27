pushActionButton: aButton

	aButton
		width: [ :b | b icon width * 1.2 ];
		vSpaceFill.
		
	self actionbarBrick addBrickBack: aButton