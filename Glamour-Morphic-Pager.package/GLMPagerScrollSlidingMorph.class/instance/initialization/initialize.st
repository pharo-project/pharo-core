initialize
	super initialize.
		
	resizingZoneWidth := 7.
	isRightResizing := false.
	isLeftResizing := false.
	isResizing := false.
		
	self image state normalColor: (Color veryLightGray alpha: 0.4).
	self flag: 'Do we need a :hover effect?'.
	self image state selectedColor: (Color veryLightGray alpha: 0.55).