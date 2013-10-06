removeLast

	| result |
	result := contents removeLast.
	self contentsChanged: result.
	^ result