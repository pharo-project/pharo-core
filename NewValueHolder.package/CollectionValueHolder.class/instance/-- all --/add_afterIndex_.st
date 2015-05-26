add: newObject afterIndex: index 
	
	| result |
	result := value add: newObject afterIndex: index.
	self valueChanged: newObject.
	^ result