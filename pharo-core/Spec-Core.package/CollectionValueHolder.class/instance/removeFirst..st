protocol
removeFirst: n 

	| result |
	result := contents removeFirst: n .
	self contentsChanged: result.
	^ result