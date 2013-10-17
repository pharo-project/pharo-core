addAll: aCollection 
	
	| result |
	result := contents addAll: aCollection.
	self contentsChanged: aCollection.
	^ result