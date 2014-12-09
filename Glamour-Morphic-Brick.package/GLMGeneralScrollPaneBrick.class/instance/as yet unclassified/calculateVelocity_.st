calculateVelocity: event
	|delta|
	delta := event timeStamp - lastScrollTimeStamp.
		
	delta > self class defaultScrollTimeReset
		ifTrue: [ currentVelocity := self class defaultScrollVelocity ]
		ifFalse: [ currentVelocity := (currentVelocity + self class defaultScrollAcceleration * (delta <= self class defaultScrollTurboTime ifTrue: [ 2 ] ifFalse: [ 1 ] )) min: self calculateMaxVelocity ].
		
	lastScrollTimeStamp := event timeStamp.
	
	^ currentVelocity ceiling