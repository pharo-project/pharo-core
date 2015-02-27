prepareFilterInContext: aSpotterContext
	super prepareFilterInContext: aSpotterContext.
	
	self query: (self query substrings: self separators) asSet asArray