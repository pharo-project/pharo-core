removeIndex: removedIndex

	| result |
	result := value removeIndex: removedIndex.
	self valueChanged: result.
	^ result