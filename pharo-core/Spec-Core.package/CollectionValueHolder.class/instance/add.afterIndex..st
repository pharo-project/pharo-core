protocol
add: newObject afterIndex: index 
	
	| result |
	result := contents add: newObject afterIndex: index.
	self contentsChanged: newObject.
	^ result