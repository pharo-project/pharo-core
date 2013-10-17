pushTemp: aName
	aName = 'self' ifTrue: [self error: 'use pushReceiver'].
	^ IRTempAccess new
		name: aName;
		store: false;
		yourself