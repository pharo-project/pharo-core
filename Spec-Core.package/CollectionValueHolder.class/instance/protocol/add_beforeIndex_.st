add: newObject beforeIndex: index 
	
	| result |
	result := contents add: newObject beforeIndex: index.
	self contentsChanged: newObject.
	^ result