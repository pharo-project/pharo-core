atNewIndex: index put: anObject
	
	contents atNewIndex: index put: anObject.
	self contentsChanged: anObject.