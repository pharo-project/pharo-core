fromHandle: aHandle type: aType size: aNumber
	^ self basicNew 
		initializeHandle: aHandle type: aType size: aNumber;
		yourself