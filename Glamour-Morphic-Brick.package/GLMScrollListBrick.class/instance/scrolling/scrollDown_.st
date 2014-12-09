scrollDown: anInteger

	((self getIndex: self band lastSubbrick) = self adaptor count) ifTrue: [
		(self band brickBounds corner y <= self height) ifTrue: [ ^ self ] ].

	band brickBounds: (band brickBounds translateBy: (0@ anInteger) negated).