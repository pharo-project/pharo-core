testNthRoot
	
	self shouldnt: [ (1 << 2000 nthRoot: 100) ] raise: ArithmeticError.
	self assert: (1 << 2000 nthRoot: 100) equals: 1 << 20