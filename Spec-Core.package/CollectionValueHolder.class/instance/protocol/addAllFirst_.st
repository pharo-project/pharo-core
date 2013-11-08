addAllFirst: anOrderedCollection
	
	| result |
	result := value addAllFirst: anOrderedCollection.
	self valueChanged: anOrderedCollection.
	^ result