scrollUp: anInteger
	
	self band translateY: (
		self isFirstAdded
			ifTrue: [ anInteger min: (self topOffset - self bandTopOffset) ]
			ifFalse: [ anInteger ])