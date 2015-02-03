scrollDown: anInteger
	
	self band translateY: (
		self isLastAdded
			ifTrue: [ anInteger min: (self band brickBounds bottom - self height) ]
			ifFalse: [ anInteger ]) negated