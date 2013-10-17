insert: anObject before: spot

	| result |
	result := contents insert: anObject before: spot.
	self contentsChanged: anObject.
	^ result