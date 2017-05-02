startUp: isImageStarting
	isImageStarting ifFalse: [ ^ self ].
	uniqueInstance ifNil: [ ^self ].
	
	self resetAll