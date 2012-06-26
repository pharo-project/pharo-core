ansi protocol
asUTC

	^ offset isZero
		ifTrue: [self]
		ifFalse: [self utcOffset: 0]
