calculateVelocity: event
	|delta|
	delta := event timeStamp - lastScrollTimeStamp.
		
	self velocity: (delta > self class defaultScrollTimeReset
		ifTrue: [ self class defaultScrollVelocity ]
		ifFalse: [ (self velocity + self class defaultScrollAcceleration * (delta <= self class defaultScrollTurboTime ifTrue: [ 2 ] ifFalse: [ 1 ] )) min: self calculateMaxVelocity ]).
		
	lastScrollTimeStamp := event timeStamp.
	
	^ self velocity ceiling