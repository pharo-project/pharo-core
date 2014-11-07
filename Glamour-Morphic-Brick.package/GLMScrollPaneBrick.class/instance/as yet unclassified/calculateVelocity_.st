calculateVelocity: event
	
	event timeStamp - lastScrollTimeStamp > self class defaultScrollTimeReset
		ifTrue: [ currentVelocity := self class defaultScrollVelocity ]
		ifFalse: [ currentVelocity := (currentVelocity + self class defaultScrollAcceleration) min: self class defaultMaxVelocity ].
		
	lastScrollTimeStamp := event timeStamp.
	
	^ currentVelocity