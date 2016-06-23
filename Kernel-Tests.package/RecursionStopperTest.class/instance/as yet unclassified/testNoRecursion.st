testNoRecursion.
	self assert: (RecursionStopper during: [true]).