addLast: newObject 

	| result |
	result := contents addLast: newObject .
	self contentsChanged: newObject.
	^ result