as yet unclassified
step
	self timeOfLastActivity > self timeout
		ifTrue: [ self delete ]
		ifFalse: [self updateColor]