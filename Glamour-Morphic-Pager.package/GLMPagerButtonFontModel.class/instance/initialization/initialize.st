initialize
	super initialize.
	
	size := self defaultSize.
	familyName := self defaultFamilyName.
	color := self defaultColor.
	
	self updateFont.
