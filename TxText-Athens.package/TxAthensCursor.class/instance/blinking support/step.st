step
	
	self visible 
		ifFalse: [ self stopStepping ]
		ifTrue: [ self changed ]