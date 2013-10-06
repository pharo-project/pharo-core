testIfNotEmptyDo

	self empty ifNotEmptyDo: [:s | self assert: false].
	self assert: (self nonEmpty ifNotEmptyDo: [:s | s]) == self nonEmpty
