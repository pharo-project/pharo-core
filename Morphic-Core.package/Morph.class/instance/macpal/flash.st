flash
	| fs |
	fs := self fillStyle.
	self fillStyle: self flashFillStyle.
	
	self addAlarm: #flashDone: withArguments: { fs } after: 50