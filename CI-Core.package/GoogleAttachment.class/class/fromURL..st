instance-creation
fromURL: anURLString
	^ self basicNew
		initializeWith: anURLString;
		yourself