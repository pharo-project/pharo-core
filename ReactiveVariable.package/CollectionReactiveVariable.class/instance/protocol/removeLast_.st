removeLast: n

	| result |
	result := value removeLast: n.
	self valueChanged: result.
	^ result