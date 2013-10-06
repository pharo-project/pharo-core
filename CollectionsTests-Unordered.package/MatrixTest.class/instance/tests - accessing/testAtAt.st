testAtAt
	self should:[matrix1 at: 2 at: 3] raise: Error.
	self should:[matrix1 at: 3 at: 2] raise: Error.
	self should:[matrix1 at: 3 at: 3] raise: Error.
	self should:[matrix1 at: 0 at: 1] raise: Error.
	self should:[matrix1 at: 1 at: 0] raise: Error.
	self should:[matrix1 at: 0 at: 0] raise: Error.
	
	self assert: (matrix1 at: 1 at: 1) = 1