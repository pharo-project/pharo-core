ansi protocol
asLocal
	
	^ (self offset = self class localOffset)
		ifTrue: [self]
		ifFalse: [self utcOffset: self class localOffset]
