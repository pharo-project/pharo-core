pushActionButton: aButton

	aButton
		width: [ :b | b icon width * 1.5 ];
		vSpaceFill.
		
	self actionbarBrick addBrickBack: aButton