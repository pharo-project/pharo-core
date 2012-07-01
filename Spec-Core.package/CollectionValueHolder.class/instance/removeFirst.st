protocol
removeFirst

	| result |
	result := contents removeFirst.
	self contentsChanged: result.
	^ result