testCompactAndUncompactClass
	self skip.
	self assert: ExampleForTest1 isCompact not.
	ExampleForTest1 becomeCompact.
	self assert: ExampleForTest1 isCompact.
	ExampleForTest1 becomeUncompact.
	self assert: ExampleForTest1 isCompact not.
	