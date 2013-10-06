rootItems

	self model useAsASet
		ifTrue: [^ self originalList sort: self sortBlock ]
		ifFalse: [^ (self dictionary keys select: [:each | each isNil not]) sorted: self sortBlock ] "with some test, the class may be nil oO"