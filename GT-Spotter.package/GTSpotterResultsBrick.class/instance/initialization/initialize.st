initialize
	super initialize.
	
	self announcer weak subscribe: GLMBrickScrollPositionChanged send: #onScrolled to: self