addAllLast: aCollection 
	
	| result |
	result := value addAllLast: aCollection.
	self valueChanged: aCollection.
	^ result