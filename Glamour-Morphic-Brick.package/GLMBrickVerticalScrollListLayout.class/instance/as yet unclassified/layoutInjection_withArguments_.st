layoutInjection: aBrick withArguments: arguments

	^ aBrick hasSubbricks
		ifFalse: [ 0 ]
		ifTrue: [ aBrick firstSubbrick brickBounds top ]