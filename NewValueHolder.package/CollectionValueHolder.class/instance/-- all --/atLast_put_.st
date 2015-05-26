atLast: indexFromEnd put: obj
	
	| result |
	result := value atLast: indexFromEnd put: obj.
	self valueChanged: obj.
	^ result