protocol
atAllPut: anObject 
	
	| result |
	result := contents atAllPut: anObject.
	self contentsChanged: anObject.
	^ result