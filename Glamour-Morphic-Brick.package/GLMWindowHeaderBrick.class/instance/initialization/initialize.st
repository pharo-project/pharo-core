initialize
	super initialize.
	
	self actionbarBrick: self newActionbarBrick.
	self labelBrick: self newLabelBrick.
	self menuBrick: self newMenuBrick.
	self
		addCloseButton;
		addOffcanvasMenuButton;
		enable
	