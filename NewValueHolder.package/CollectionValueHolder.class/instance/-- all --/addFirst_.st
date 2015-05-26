addFirst: newObject 

	| result |
	result := value addFirst: newObject .
	self valueChanged: newObject.
	^ result