removeIndex: removedIndex

	| result |
	result := contents removeIndex: removedIndex.
	self contentsChanged: result.
	^ result