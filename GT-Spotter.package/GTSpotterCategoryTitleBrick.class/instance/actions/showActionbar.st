showActionbar

	(self hasSubbrick: self actionbarBrick) ifFalse: [ 
		self addBrickBack: self actionbarBrick ]