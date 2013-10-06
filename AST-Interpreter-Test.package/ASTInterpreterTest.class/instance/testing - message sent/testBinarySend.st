testBinarySend
	self assert: (self interpret: '1 + 2') = 3.
	self assert: (self interpret: '1 < 2') = true.