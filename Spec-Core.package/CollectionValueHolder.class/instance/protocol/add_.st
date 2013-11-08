add: newObject

	| result |
	result := value add: newObject.
	self valueChanged: newObject.
	^ result