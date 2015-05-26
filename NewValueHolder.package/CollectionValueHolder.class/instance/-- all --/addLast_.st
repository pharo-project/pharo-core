addLast: newObject 

	| result |
	result := value addLast: newObject .
	self valueChanged: newObject.
	^ result