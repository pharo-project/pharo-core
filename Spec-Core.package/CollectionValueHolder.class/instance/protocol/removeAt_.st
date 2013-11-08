removeAt: index

	| result |
	result := value removeAt: index.
	self valueChanged: result.
	^ result