atAll: aCollection put: anObject 
	
	| result |
	result := contents atAll: aCollection put: anObject .
	self contentsChanged: anObject.
	^ result