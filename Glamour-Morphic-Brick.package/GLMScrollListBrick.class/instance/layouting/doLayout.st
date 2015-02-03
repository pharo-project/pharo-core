doLayout
	
	self band hasSubbricks ifFalse: [ self updateVisible ].
	
	self layoutPolicy layout: self in: self brickBounds.
	self flag: 'Fix bug in Layouts'.
	self band doLayout.
	self band doLayout.
	self update.