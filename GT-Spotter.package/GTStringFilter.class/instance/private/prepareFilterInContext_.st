prepareFilterInContext: aSpotterContext
	super prepareFilterInContext: aSpotterContext.
	
	self query: (self caseSensitive
		ifTrue: [ self context textTrimmed ]
		ifFalse: [ self context textLowercase ])