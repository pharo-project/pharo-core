testAsFloatPoint

	self assert: (1 @ 1) asFloatPoint = (1.0 @ 1.0).
	self assert: (1.2 @ 1) asFloatPoint = (1.2 @ 1.0).
	self assert: (1 @ 1.2) asFloatPoint = (1.0 @ 1.2).
	self assert: (1.2 @ 1.2) asFloatPoint = (1.2 @ 1.2).
	self assert: (1.000000000000000001 @ 1.9999999999) asFloatPoint = (1.000000000000000001 @ 1.9999999999).
	
	self assert: (-1 @ -1) asFloatPoint = (-1.0 @ -1.0).
	self assert: (-1.2 @ -1) asFloatPoint = (-1.2 @ -1.0).
	self assert: (-1 @ -1.2) asFloatPoint = (-1.0 @ -1.2).
	self assert: (-1.2 @ -1.2) asFloatPoint = (-1.2 @ -1.2).
	self assert: (-1.000000000000000001 @ -1.9999999999) asFloatPoint = (-1.000000000000000001 @ -1.9999999999).
	
	self deny: (1.2 @ 1) asFloatPoint = (1 @ 1).
	self deny: (1 @ 1.2) asFloatPoint = (1 @ 1).
	self deny: (1.2 @ 1.2) asFloatPoint = (1 @ 1).
	
	self deny: (-1.2 @ -1) asFloatPoint = (-1 @ -1).
	self deny: (-1 @ -1.2) asFloatPoint = (-1 @ -1).
	self deny: (-1.2 @ -1.2) asFloatPoint = (-1 @ -1).