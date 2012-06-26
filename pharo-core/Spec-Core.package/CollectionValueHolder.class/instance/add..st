protocol
add: newObject

	| result |
	result := contents add: newObject.
	self contentsChanged: newObject.
	^ result