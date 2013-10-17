removeLast: n

	| result |
	result := contents removeLast: n.
	self contentsChanged: result.
	^ result