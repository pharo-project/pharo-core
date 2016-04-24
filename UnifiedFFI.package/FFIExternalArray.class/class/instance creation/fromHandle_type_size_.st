fromHandle: aHandle type: aType size: aNumber
	^ self basicNew 
		initializeHandle: aHandle type: (self resolveType: aType) size: aNumber;
		yourself