accessing
notifyTracker
	self isVerbose ifFalse: [ ^ self ].
	
	self 
		ifGreen: [ self issue fixToInclude: self buildGreenReport ]
		ifErrors: [ self issue reviewNeeded: self buildRedReport ]
		ifTestFailing:[ self issue failingTest: self buildRedReport ]