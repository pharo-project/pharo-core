instance creation
newAnalyzing: aClass
	
	^ self basicNew
		initializeWith: aClass;
		initializeAnalyzing;
		yourself.