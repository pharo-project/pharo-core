testCull

	self should: [self interpret: '[ :x :y | x + y ] cull: 1'] raise: InterpretationError.
	self assert: (self interpret: '[:x | x] cull: 1') = 1.
	self assert: (self interpret: '[2] cull: 1') = 2.
	
	self should: [self interpret: '[ :x :y :z | x + y + z ] cull: 1 cull: 2'] raise: InterpretationError.
	self assert: (self interpret: '[:x :y | x + y] cull: 1 cull: 2') = 3.
	self assert: (self interpret: '[:x | x] cull: 1 cull: 2') = 1.
	self assert: (self interpret: '[5] cull: 1 cull: 2') = 5.


	
	