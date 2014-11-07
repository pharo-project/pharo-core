initialize
	super initialize.
	
	fontSize := self defaultSize.
	familyName := self defaultFamilyName.
	textColor := self defaultColor.
	text := ''.
	
	textPosition := #leftCenter.
	
	self updateFont.
	