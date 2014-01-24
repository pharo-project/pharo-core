atAllPut: anObject 
	
	| result |
	result := value atAllPut: anObject.
	self valueChanged: anObject.
	^ result