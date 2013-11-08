removeFirst: n 

	| result |
	result := value removeFirst: n .
	self valueChanged: result.
	^ result