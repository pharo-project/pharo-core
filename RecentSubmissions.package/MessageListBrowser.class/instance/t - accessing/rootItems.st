rootItems
	self model useAsASet
		ifTrue: [ ^ self originalList sort: self sortBlock ]
		ifFalse: [ ^ (self dictionary keys reject: [ :each | each isNil ]) sorted: self sortBlock ]	"with some test, the class may be nil oO"