addAllFirstUnlessAlreadyPresent: anOrderedCollection
	
	| result |
	result := value addAllFirstUnlessAlreadyPresent: anOrderedCollection.
	self valueChanged: anOrderedCollection.
	^ result