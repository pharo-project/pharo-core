protocol
add: newObject after: oldObject 
	
	| result |
	result := contents add: newObject after: oldObject.
	self contentsChanged: newObject.
	^ result