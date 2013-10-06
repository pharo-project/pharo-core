testUnarySend
	self assert: (self interpret: '1 asInteger') = 1.
	self assert: (self interpret: '1 class') = SmallInteger.