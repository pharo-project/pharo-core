at: index ifAbsentPut: block

	| result |
	result := value at: index ifAbsentPut: block.
	self valueChanged: block value.
	^ result