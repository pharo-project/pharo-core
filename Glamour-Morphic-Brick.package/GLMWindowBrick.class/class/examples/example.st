example
	|foundation brick|
	brick := GLMBrick new.
	brick
		color: Color lightBlue;
		vSpaceFill;
		hSpaceFill.
		
	foundation := self new.
	foundation
		color: Color white;
		addBrickBack: brick;
		extent: 400@400;
		openInWorld
	