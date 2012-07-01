instance creation
materializing: aClass from: aDecoder
	
	^ self basicNew
		initializeWith: aClass;
		initializeMaterializingFrom: aDecoder;
		yourself.