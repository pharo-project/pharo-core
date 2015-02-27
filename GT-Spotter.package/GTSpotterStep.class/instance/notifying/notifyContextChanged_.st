notifyContextChanged: aSpotterContext
	self announcer announce: (GTSpotterContextChanged new 
		context: aSpotterContext; 
		yourself)