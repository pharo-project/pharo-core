scrollDown: anInteger
	|delta|
	delta := anInteger.
	((self getIndex: self band lastSubbrick) = self adaptor count) ifTrue: [
		
		(((self getIndex: self band firstSubbrick) = 1) and: [ self isVisible: self band firstSubbrick ])
			ifTrue: [ ^self ].
		
		delta := self band brickBounds corner y - self height. ].

	band brickBounds: (band brickBounds translateBy: (0@ delta) negated)