initialize
	super initialize.
	self band hSpaceFill.
	self announcer weak subscribe: GLMBrickScrollPositionChanged send: #onScrolled to: self