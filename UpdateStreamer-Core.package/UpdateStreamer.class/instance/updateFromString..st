public
updateFromString: aString
	self updateWith: [ self elementaryReadServerUpdates: (self newUpdatesFromString: aString) ]