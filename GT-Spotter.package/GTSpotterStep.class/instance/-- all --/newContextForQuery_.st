newContextForQuery: aString
	^ GTSpotterContext new 
		step: self;
		stream: self stream;
		text: aString;
		yourself