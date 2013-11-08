add: newObject beforeIndex: index 
	
	| result |
	result := value add: newObject beforeIndex: index.
	self valueChanged: newObject.
	^ result