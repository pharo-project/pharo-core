initialize
	super initialize.
	
	self
		normalColor: (Color veryVeryLightGray alpha: 0.8);
		selectedColor: (Color veryVeryLightGray);
		checkedColor: (Color r: 35 g: 205 b: 255 range: 255);
		borderColor: (Color veryLightGray);
		borderWidth: 1;
		hShrinkWrap;
		enable.
		
	self iconBrick: self newIconBrick.
	self labelBrick: self newLabelBrick.
	self actionbarBrick: self newActionbarBrick.
	self addCloseButton
	
