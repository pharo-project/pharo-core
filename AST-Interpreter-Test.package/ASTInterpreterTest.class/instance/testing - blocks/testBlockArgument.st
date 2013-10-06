testBlockArgument

	self assert: (self interpret: '[ :a| a ] value: 1') = 1.
	self assert: (self interpret: '[ :a| a + 3 ] value: 3 ') = 6.
	self assert: (self interpret: '[ :a :b | a + b ] value: 3 value: 5 ') = 8.
	
	self assert: (self interpret: '[ :a| a ] valueWithArguments: #(1)') equals: 1.
	self should: [self interpret: '[ :a| a ] valueWithArguments: #(1 3)'] raise: InterpretationError.
	self assert: (self interpret: '[ :a| a + 3 ] valueWithArguments: #(3) ') equals: 6.