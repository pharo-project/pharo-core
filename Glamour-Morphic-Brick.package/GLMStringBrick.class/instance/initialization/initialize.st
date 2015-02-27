initialize
	super initialize.
	
	fontSize := self defaultSize.
	familyName := self defaultFamilyName.
	text := ''.
	
	textPosition := #leftCenter.
	
	self
		hShrinkWrap;
		vShrinkWrap.
	self updateFont.
	