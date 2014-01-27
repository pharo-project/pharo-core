atAll: indexArray putAll: valueArray
	
	| result |
	result := value atAll: indexArray putAll: valueArray.
	self valueChanged: valueArray.
	^ result