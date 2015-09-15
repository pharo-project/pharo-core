initialize
	super initialize.
	self band hSpaceFill.
	self announcer weak when: GLMBrickScrollPositionChanged send: #onScrolled to: self