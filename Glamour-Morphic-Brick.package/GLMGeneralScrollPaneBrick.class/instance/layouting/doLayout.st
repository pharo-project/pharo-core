doLayout
	super doLayout.
	
	self band brickBounds: (self band brickBounds translateBy: (0@(self scrollPositionTop - self band brickBounds top))).
	
	self update