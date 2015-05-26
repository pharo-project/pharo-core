atAll: aCollection put: anObject 
	
	| result |
	result := value atAll: aCollection put: anObject .
	self valueChanged: anObject.
	^ result