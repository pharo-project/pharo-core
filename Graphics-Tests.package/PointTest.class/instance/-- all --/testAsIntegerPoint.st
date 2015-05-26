testAsIntegerPoint

	self assert: (1 @ 1) asIntegerPoint = (1 @ 1).
	self assert: (1.2 @ 1) asIntegerPoint = (1 @ 1).
	self assert: (1 @ 1.2) asIntegerPoint = (1 @ 1).
	self assert: (1.2 @ 1.2) asIntegerPoint = (1 @ 1).
	self assert: (1.000000000000000001 @ 1.9999999999) asIntegerPoint = (1 @ 1).
	
	self assert: (-1 @ -1) asIntegerPoint = (-1 @ -1).
	self assert: (-1.2 @ -1) asIntegerPoint = (-1 @ -1).
	self assert: (-1 @ -1.2) asIntegerPoint = (-1 @ -1).
	self assert: (-1.2 @ -1.2) asIntegerPoint = (-1 @ -1).
	self assert: (-1.000000000000000001 @ -1.9999999999) asIntegerPoint = (-1 @ -1).
	
	self deny: (1.2 @ 1) asIntegerPoint = (1.2 @ 1).
	self deny: (1 @ 1.2) asIntegerPoint = (1 @ 1.2).
	self deny: (1.2 @ 1.2) asIntegerPoint = (1.2 @ 1.2).
	
	self deny: (-1.2 @ -1) asIntegerPoint = (-1.2 @ -1).
	self deny: (-1 @ -1.2) asIntegerPoint = (-1 @ -1.2).
	self deny: (-1.2 @ -1.2) asIntegerPoint = (-1.2 @ -1.2).
	