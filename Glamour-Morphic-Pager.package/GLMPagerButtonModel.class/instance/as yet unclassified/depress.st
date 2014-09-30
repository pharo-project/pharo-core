depress
	self isPressed ifTrue: [ 
		isPressed := false.
		self announcer announce: (GLMPagerButtonDepressed new).
		
		self click.
	]