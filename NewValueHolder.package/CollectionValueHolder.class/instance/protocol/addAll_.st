addAll: aCollection 
	
	| result |
	result := value addAll: aCollection.
	self valueChanged: aCollection.
	^ result