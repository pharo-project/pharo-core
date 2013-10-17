addFirst: newObject 

	| result |
	result := contents addFirst: newObject .
	self contentsChanged: newObject.
	^ result