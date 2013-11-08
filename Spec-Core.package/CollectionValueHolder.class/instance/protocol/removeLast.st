removeLast

	| result |
	result := value removeLast.
	self valueChanged: result.
	^ result