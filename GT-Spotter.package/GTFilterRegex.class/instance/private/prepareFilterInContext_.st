prepareFilterInContext: aSpotterContext
	super prepareFilterInContext: aSpotterContext.
	
	self regex: (self caseSensitive 
		ifTrue: [ self query asRegex ] 
		ifFalse: [ self query asRegexIgnoringCase ])