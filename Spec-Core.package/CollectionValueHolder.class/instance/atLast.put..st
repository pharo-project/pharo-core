protocol
atLast: indexFromEnd put: obj
	
	| result |
	result := contents atLast: indexFromEnd put: obj.
	self contentsChanged: obj.
	^ result